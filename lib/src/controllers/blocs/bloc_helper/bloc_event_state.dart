import 'package:flutter/foundation.dart';

import 'bloc_provider.dart';
import 'package:rxdart/rxdart.dart';

abstract class BlocEvent extends Object {}

abstract class BlocState extends Object {}

abstract class BlocEventStateBase<BlocEvent, BlocState> implements BlocBase {
  PublishSubject<BlocEvent> _eventController = PublishSubject<BlocEvent>();
  BehaviorSubject<BlocState> _stateController = BehaviorSubject<BlocState>();

  Function(BlocEvent) get emitEvent => _eventController.sink.add;

  Stream<BlocState> get state => _stateController.stream;

  BlocState get lastState => _stateController.value;

  Stream<BlocState> eventHandler(BlocEvent event, BlocState currentState);

  final BlocState initialState;

  BlocEventStateBase({
    @required this.initialState,
  }) {
    _eventController.listen((BlocEvent event) {
      BlocState currentState = lastState ?? initialState;
      eventHandler(event, currentState).forEach((BlocState newState) {
        _stateController.sink.add(newState);
      });
    });
  }
  @override
  void dispose() {
    _eventController.close();
    _stateController.close();
  }
}

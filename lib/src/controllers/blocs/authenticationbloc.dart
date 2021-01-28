import 'package:lawyer_erp/src/controllers/blocs/authenticationEvent.dart';
import 'package:lawyer_erp/src/controllers/blocs/authenticationState.dart';

import 'bloc_helper/bloc_event_state.dart';

class AuthenticationBloc
    extends BlocEventStateBase<AuthenticationEvent, AuthenticationState> {
  ///
  /// initialize our bloc with our initial state
  ///
  AuthenticationBloc() : super(initialState: AuthenticationState());

  ///
  /// event handler body
  ///
  @override
  Stream<AuthenticationState> eventHandler(
      AuthenticationEvent event, AuthenticationState currentState) async* {
    if (event.authenticationType == ApplicationAuthenticationType.admin) {
      yield AuthenticationState.adminLogin(" ", "admin");
      //  event.isLogin = true;
    }
    if (event.authenticationType == ApplicationAuthenticationType.nothing) {
      yield AuthenticationState();
      //  event.isLogin = true;
    }
  }
}

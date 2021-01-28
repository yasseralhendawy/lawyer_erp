import 'bloc_helper/bloc_event_state.dart';

class AuthenticationEvent extends BlocEvent {
  final bool isLogin;

  final ApplicationAuthenticationType authenticationType;

  AuthenticationEvent(
      {this.isLogin: false,
      this.authenticationType: ApplicationAuthenticationType.nothing})
      : assert(isLogin != null);
}

enum ApplicationAuthenticationType {
  nothing,
  admin,
  HR_manager,
  department_manager
}

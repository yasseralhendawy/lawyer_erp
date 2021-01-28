import 'bloc_helper/bloc_event_state.dart';

class AuthenticationState extends BlocState {
  final String token;
  final String username;
  final bool loginPage;
  final bool allPages;
  final bool hRPage;

  //TODO bool for every page will display for the current user from it's auth
  AuthenticationState(
      {this.loginPage: true,
      this.token,
      this.username,
      this.allPages: false,
      this.hRPage: false});

  factory AuthenticationState.adminLogin(String token, String username) {
    return AuthenticationState(
        loginPage: false,
        token: token,
        username: username,
        allPages: true,
        hRPage: true);
  }
}

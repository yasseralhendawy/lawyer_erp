import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/controllers/blocs/authenticationEvent.dart';
import 'package:lawyer_erp/src/controllers/blocs/authenticationState.dart';
import 'package:lawyer_erp/src/controllers/blocs/authenticationbloc.dart';
import 'package:lawyer_erp/src/controllers/blocs/bloc_helper/bloc_provider.dart';
import 'package:lawyer_erp/src/controllers/blocs/bloc_widget/bloc_state_builder.dart';
import 'package:lawyer_erp/src/controllers/providers/homePageProvider.dart';
import 'package:lawyer_erp/src/ui/home_page_screens/login.dart';
import 'package:provider/provider.dart';

class BodyWidget extends StatefulWidget {
  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  AuthenticationBloc bloc;

  @override
  Widget build(BuildContext context) {
    Widget switchChild;
    double _width=0;
    bloc = BlocProvider.of<AuthenticationBloc>(context);
    return BlocEventStateBuilder<AuthenticationState>(
        bloc: bloc,
        builder: (context, snapshot) {
          HomePageProvider _provider = Provider.of<HomePageProvider>(context);
          if (snapshot.loginPage) {
            switchChild = _login();
            _width=MediaQuery.of(context).size.width>300?MediaQuery.of(context).size.width-300:0;
          } else {
            // HomePageProvider will provide us with the right widget
            _width=MediaQuery.of(context).size.width>150?MediaQuery.of(context).size.width-150:0;
            switchChild = _provider.getTheRightPage();
          }
          return Container(
              height: MediaQuery.of(context).size.height,
              width:_width,
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 500),
                switchOutCurve: Curves.easeOut,
                switchInCurve: Curves.easeIn,
                transitionBuilder:
                    (Widget child, Animation<double> animation) {
                  return ScaleTransition(
                    child: child,
                    scale: animation,
                  );
                },
                child: switchChild,
                // child: loginWithAnimationOpacity(snapshot.loginPage)),
              ));
        });
  }

  Widget _login() {
    return LoginWidget(
      height: MediaQuery.of(context).size.height * .5,
      width: MediaQuery.of(context).size.width * .5,
      image: AssetImage("assets/logo.png"),
      loginOnPressed: () {
        bloc.emitEvent(AuthenticationEvent(
            authenticationType: ApplicationAuthenticationType.admin,
            isLogin: true));
      },
    );
  }
}

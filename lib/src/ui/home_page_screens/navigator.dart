import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/controllers/blocs/authenticationEvent.dart';
import 'package:lawyer_erp/src/controllers/blocs/authenticationState.dart';
import 'package:lawyer_erp/src/controllers/blocs/authenticationbloc.dart';
import 'package:lawyer_erp/src/controllers/blocs/bloc_helper/bloc_provider.dart';
import 'package:lawyer_erp/src/controllers/blocs/bloc_widget/bloc_state_builder.dart';
import 'package:lawyer_erp/src/controllers/providers/homePageProvider.dart';
import 'package:provider/provider.dart';

class NavigationWidget extends StatefulWidget {
  @override
  _NavigationWidgetState createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget>
    with TickerProviderStateMixin {
  AuthenticationBloc _bloc;
  @override
  Widget build(BuildContext context) {
    _bloc = BlocProvider.of<AuthenticationBloc>(context);
    return BlocEventStateBuilder<AuthenticationState>(
        bloc: _bloc,
        builder: (context, snapshot) {
          double _width;
          double _opacity;
          Widget _myNavigationButtons;
          if (snapshot.loginPage) {
            _width = 300;
            _opacity = 0.7;
            _myNavigationButtons = Container();
          } else {
            _opacity = .1;
            _width = 150;
            _myNavigationButtons = navigationButtons();
          }
          return AnimatedSize(
            duration: Duration(seconds: 2),
            vsync: this,
            reverseDuration: Duration(seconds: 4),
            curve: Curves.bounceInOut,
            alignment: Alignment.center,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: _width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.blueGrey.shade100, blurRadius: 10.0)
                ],
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                image: DecorationImage(
                    image: AssetImage('assets/welcome_side.jpg'),
                    colorFilter: ColorFilter.mode(
                        Colors.blueGrey.withOpacity(_opacity),
                        BlendMode.dstATop),
                    fit: BoxFit.fill),
              ),
              child: _myNavigationButtons,
            ),
          );
        });
  }

  Widget navigationButtons() {
    HomePageProvider _provider = Provider.of<HomePageProvider>(context);
    List<MenuItem> _optrions = [
      MenuItem(
        title: "Services",
        onPressed: () {
          _provider.setServicesScreen();
        },
      ),
      MenuItem(
        title: "HR",
        onPressed: () {
          _provider.setHRScreen();
        },
      ),
      MenuItem(
        title: "Our Clients",
        onPressed: () {
          _provider.setClientsScreen();
        },
      ),
    ];

    ///
    /// list for footer items
    ///
    List<MenuItem> _footerOptrions = [
      MenuItem(
        title: "Log out",
        onPressed: () {
          _bloc.emitEvent(AuthenticationEvent(
              isLogin: false,
              authenticationType: ApplicationAuthenticationType.nothing));
        },
      ),
      MenuItem(
        title: "Support",
        onPressed: () {
          _provider.setSupportScreen();
        },
      ),
    ];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: InkWell(
              onTap: () {
                _provider.setHomeScreen();
              },
              child: Column(
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage('assets/admin.jpeg')),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.black45,
                          )
                        ]),
                  ),
                  Text(
                    "admin",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(height: 200,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _optrions.map((item) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: item.onPressed,
                  child: Container(
                    height: 40,
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.centerRight,
                    child: Text(
                      item.title,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: item.itemFontSize,
                          fontWeight: FontWeight.bold,
                          color: item.itemColor),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          Container(height: 200,),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _footerOptrions.map((item) {
              return FlatButton(
                onPressed: item.onPressed,
                child: Text(
                  item.title,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: item.itemFontSize,
                      fontWeight: FontWeight.bold,
                      color: item.itemColor),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
class MenuItem {
  final String title;
  final VoidCallback onPressed;
  final Color itemColor;
  final double itemFontSize;

  MenuItem(
      {@required this.title,
        @required this.onPressed,
        this.itemColor: Colors.black,
        this.itemFontSize: 12});
}

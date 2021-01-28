import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lawyer_erp/src/controllers/providers/homePageProvider.dart';
import 'package:lawyer_erp/src/ui/home_page_screens/body.dart';
import 'package:lawyer_erp/src/ui/home_page_screens/navigator.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            // color: Colors.indigo.shade300,
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/wall.jpg'),
                colorFilter: ColorFilter.mode(
                    Colors.blueGrey.withOpacity(0.1), BlendMode.dstATop),
                fit: BoxFit.fill),
          ),
          child: ChangeNotifierProvider<HomePageProvider>(
              create: (_) => HomePageProvider(),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    NavigationWidget(),
                    BodyWidget(),
                  ],
                ),
              )),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/app.dart';
import 'package:lawyer_erp/src/controllers/blocs/bloc_helper/bloc_provider.dart';

import 'src/controllers/blocs/authenticationbloc.dart';

void main() {
  _setTargetPlatformForDesktop();
  runApp(MyApp());
}

void _setTargetPlatformForDesktop() {
  // No need to handle macOS, as it has now been added to TargetPlatform.
  if (Platform.isLinux || Platform.isWindows) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
      bloc: AuthenticationBloc(),
      child: MaterialApp(
        title: 'Lawyers demo',
        routes: <String, WidgetBuilder>{
          "/home": (BuildContext context) => MyHomePage(),
        },
        theme: ThemeData(
          fontFamily: "Tajawal",
          // is not restarted.
          primarySwatch: Colors.blueGrey,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

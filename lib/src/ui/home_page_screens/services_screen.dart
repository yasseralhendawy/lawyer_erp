import 'package:flutter/material.dart';

import 'layouts/serveceslayout/addnewService.dart';
import 'layouts/serveceslayout/myserviceslayout.dart';

class ServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: TabBar(
          tabs: <Widget>[
            Text(
              "My Servises",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              "Add new service",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
          labelColor: Colors.indigo.shade300,
          unselectedLabelColor: Colors.black38,
          indicatorColor: Colors.indigo,
          labelPadding: EdgeInsets.all(10),
        ),
        body: TabBarView(children: [
          MyServicesLayout(),
          AddNewServiceLayout(),
        ]),
      ),
    );
  }
}

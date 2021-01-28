import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/ui/case_page/layouts/caseInfoLayout.dart';

import 'layouts/editCaseLayout.dart';

class CasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              // color: Colors.indigo.shade300,
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage('assets/wall.jpg'),
                  colorFilter: ColorFilter.mode(
                      Colors.indigo.withOpacity(0.1), BlendMode.dstATop),
                  fit: BoxFit.fill),
            ),
          ),
          leading: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            //  color: Colors.white,
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back),
            ),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: pageBody(),
        ));
  }

  Widget pageBody() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          //    backgroundColor: Colors.white,
          appBar: TabBar(tabs: <Widget>[
            Text(
              "Case Information",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              "Edit or Close",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ]),
          body: TabBarView(
            children: <Widget>[
              CaseInfoLayout(),
              EditCaseLayout(),
            ],
          ),
        ),
      ),
    );
  }
}

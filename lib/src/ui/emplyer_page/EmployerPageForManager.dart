import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/ui/home_page_screens/homeLayout.dart';
import 'package:lawyer_erp/src/ui/widgets/business_card.dart';

class EmployerPageForManager extends StatelessWidget {

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
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('assets/wall.jpg'),
              colorFilter: ColorFilter.mode(
                  Colors.blueGrey.withOpacity(0.1), BlendMode.dstATop),
              fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 400,
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 200,
                        alignment: Alignment.center,
                        child: BusinessCard(
                          image: AssetImage("assets/admin.jpeg"),
                          name: "Employee Name",
                          title: "Title",
                          mobile: "01xxxxxxxxx",
                          email: "user@domain.com",
                        ),
                      ),
                      Container(
                        height: 500,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(16.0),
                              topRight: Radius.circular(16.0)),
                          border: Border.all(color: Colors.blueGrey, width: .5),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: <Widget>[
                            Expanded(flex: 1, child: _numberOfTasks()),
                            Expanded(flex: 1, child: _numberOfWarnings()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 1000,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(16.0),
                      topRight: Radius.circular(16.0)),
                  border: Border.all(color: Colors.blueGrey, width: .5),
                  color: Colors.white,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: HomePageLayout(
                    forManager: true,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _numberOfWarnings() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Text(
            "Number of Warnings",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w700, color: Colors.red),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "0",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w700, color: Colors.red),
          ),
        ),
      ],
    );
  }

  Widget _numberOfTasks() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Text(
            "Number of Tasks",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w700, color: Colors.green),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "20",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w700, color: Colors.green),
          ),
        ),
      ],
    );
  }
}

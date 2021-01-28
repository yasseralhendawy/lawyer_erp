import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/ui/widgets/business_card.dart';

class LawyerPage extends StatelessWidget {
  final Object heroKey;

  LawyerPage({this.heroKey, Key key}) : super(key: key);

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
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    //fit: FlexFit.loose,
                    child: Align(
                      alignment: Alignment.center,
                      child: Hero(
                        tag: heroKey,
                        child: BusinessCard(
                          imageflex: 2,
                          cardColor: Colors.blueGrey.shade100,
                          image: AssetImage("assets/lawyer-512.png"),
                          name: "Lawyer Name",
                          fontSize: 18,
                          title: "Office Name",
                          mobile: "01xxxxxxxxx",
                          email: "user@domain.com",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
//                    fit: FlexFit.loose,
                    child: Container(
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
                        child: Text(
                          "here will be lawyer data ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
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
                    child: Text(
                      "here we will controll the Lawyer depend on bussiness model ",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

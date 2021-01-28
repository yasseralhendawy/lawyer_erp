import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lawyer_erp/src/ui/client_page/layouts/addNewCaseLayout.dart';
import 'package:lawyer_erp/src/ui/client_page/layouts/caselist.dart';
import 'package:lawyer_erp/src/ui/client_page/layouts/clientDetails.dart';
import 'package:lawyer_erp/src/ui/widgets/card_with_Icon_and_desc.dart';

class ClientPage extends StatefulWidget {

  @override
  _ClientPageState createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
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
            children: <Widget>[
              Container(
                width: 400,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        height: 200,
                        child: CardsWithIconAndDesc(
                          type: CardsWithIconAndDescType.Client,
                          placeHolder: "assets/placeholder.png",
                          cardTitle: "Client Name",
                          cardContent:
                              "Some information about our clients or short description",
                          titleFontSize: 18,
                          contentSize: 14,
                          cardColor: Colors.white,
                        ),
                      ),
                      ClientCasesList(),
                    ],
                  ),
                ),
              ),
              MediaQuery.of(context).size.width>500?pageBody():Container()
            ],
          ),
        ),
      ),
    );
  }

  Widget pageBody() {
    return Container(
      width: MediaQuery.of(context).size.width>400?MediaQuery.of(context).size.width-400:0,
      padding: const EdgeInsets.only(top: 20),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          //    backgroundColor: Colors.white,
          appBar: TabBar(tabs: <Widget>[
            Text(
              "Clients details",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              "Add new case",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ]),
          body: TabBarView(
            children: <Widget>[
              ClientDetailsLayout(),
              AddNewCaseLayout(),
            ],
          ),
        ),
      ),
    );
  }
}

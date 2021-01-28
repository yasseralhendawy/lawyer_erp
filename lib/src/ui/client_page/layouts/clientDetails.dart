import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/ui/widgets/addNewCitizen.dart';
import 'package:lawyer_erp/src/ui/widgets/addNewCompany.dart';

class ClientDetailsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          bodyTitle(),
          individuals(),
          companies(),
        ],
      ),
    );
  }

  Widget bodyTitle() {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(16.0), topLeft: Radius.circular(16.0)),
        border: Border.all(color: Colors.blueGrey, width: .5),
        color: Colors.white,
      ),
      alignment: Alignment.centerLeft,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              "date of joining ",
              textAlign: TextAlign.start,
            ),
          ),
          Expanded(
            child: Text(
              "client ID",
              textAlign: TextAlign.end,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  Widget individuals() {
    return Container(
        height: 400,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey, width: .5),
          color: Colors.white,
        ),
        alignment: Alignment.centerLeft,
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: TabBar(tabs: <Widget>[
              Text(
                "Citizens",
                style: TextStyle(fontSize: 18, color: Colors.blueGrey),
              ),
              Text(
                "Add new citizen",
                style: TextStyle(fontSize: 18, color: Colors.blueGrey),
              ),
            ]),
            body: TabBarView(
              children: <Widget>[
                Container(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 500,
                        mainAxisSpacing: 20.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: 3,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return citizensCard();
                      },
                      itemCount: 50,
                      addRepaintBoundaries: false),
                ),
                AddNewCitizen()
              ],
            ),
          ),
        ));
  }

  Widget companies() {
    return Container(
      height: 400,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16.0),
            bottomRight: Radius.circular(16.0)),
        border: Border.all(color: Colors.blueGrey, width: .5),
        color: Colors.white,
      ),
      alignment: Alignment.centerLeft,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: TabBar(tabs: <Widget>[
            Text(
              "Companies",
              style: TextStyle(fontSize: 18, color: Colors.blueGrey),
            ),
            Text(
              "Add new company",
              style: TextStyle(fontSize: 18, color: Colors.blueGrey),
            ),
          ]),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              Container(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 500,
                      mainAxisSpacing: 20.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 3,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return companyCard();
                    },
                    itemCount: 1,
                    addRepaintBoundaries: false),
              ),
              AddNewCompany()
            ],
          ),
        ),
      ),
    );
  }

  Widget companyCard() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        border: Border.all(color: Colors.blueGrey, width: .5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                  child: Text(
                "Name ",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              Expanded(
                child: Text("Company ID"),
              ),
              Expanded(child: Text("Client ID")),
            ],
          ),
          Expanded(
              //fit: FlexFit.loose,
              child: Column(
                //  mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    //fit: FlexFit.loose,
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Expanded(child: Text("Type")),
                          Expanded(
                            child: Text(
                              "Industry",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    //fit: FlexFit.loose,
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Address",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget citizensCard() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        border: Border.all(color: Colors.blueGrey, width: .5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
              //fit: FlexFit.loose,
              flex: 2,
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    "Name ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  Expanded(
                    child: Text("National ID"),
                  ),
                  Expanded(child: Text("Client ID")),
                ],
              )),
          Expanded(
              //fit: FlexFit.loose,
              flex: 10,
              child: Column(
                //  mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    //fit: FlexFit.loose,
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Job",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Expanded(
                      //fit: FlexFit.loose,
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Address",
                          textAlign: TextAlign.center,
                        ),
                      ))
                ],
              ))
        ],
      ),
    );
  }
}

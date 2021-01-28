import 'package:flutter/material.dart';

class CaseInfoLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          caseInfo(context),
          fileView(context),
        ],
      ),
    );
  }

  Widget caseInfo(BuildContext context) {
    return Container(
      width: 400,
      margin: EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ///
            /// Case Info
            ///
            Container(
              height: 200,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(16)),
                border: Border.all(color: Colors.blueGrey, width: .5),
                color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 25,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "Case name :",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text("case name "),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 25,
                    child: Row(
                      children: <Widget>[
                    Expanded(
                      child: Text("Case ID :",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text("123"),
                    ),
                      ],
                    ),
                  ),
                  Container(
                    height: 25,
                    child: Row(
                      children: <Widget>[
                    Expanded(
                      child: Text("Service : ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text("Service Name "),
                    ),
                      ],
                    ),
                  ),
                  Container(
                    height: 25,
                    child: Row(
                      children: <Widget>[
                    Expanded(
                      child: Text("Date : ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text("1-1-2020"),
                    ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("About the case : ",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(""),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 25,
                    child: Row(
                      children: <Widget>[
                    Expanded(
                      child: Text("Lawyer :",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text("lawyer name "),
                    ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///
            /// Client Info
            ///
            Container(
              height: 100,
              margin: EdgeInsets.only(top: 8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey, width: .5),
                color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "Client  name :",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text("client name "),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Client ID :",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text("123"),
                      ),
                    ],
                  )),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height>500?MediaQuery.of(context).size.height-450:0,
              margin: EdgeInsets.only(top: 8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(16)),
                  color: Colors.white,
                  border: Border.all(color: Colors.blueGrey, width: .5)),
              child: Column(
                children: <Widget>[
                  Text(
                    "Files",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  MediaQuery.of(context).size.height<500?Container():Container(
                    height: MediaQuery.of(context).size.height-500,
                    child: GridView.builder(
                        gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10.0,
                          crossAxisSpacing: 10.0,
                          childAspectRatio: 5,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            color: Colors.blueGrey,
                            alignment: Alignment.center,
                            child: Text(
                              "file " + index.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          );
                        },
                        itemCount: 50,
                        addRepaintBoundaries: false),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget fileView(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width>400?MediaQuery.of(context).size.width-400:0,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
        border: Border.all(color: Colors.blueGrey, width: .5),
        color: Colors.white,
      ),
      child: Text(
        "PDF Viewer",
        textAlign: TextAlign.center,
      ),
    );
  }
}

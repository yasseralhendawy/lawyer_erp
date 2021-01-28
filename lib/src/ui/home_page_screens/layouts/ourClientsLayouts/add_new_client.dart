import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/ui/widgets/addNewCitizen.dart';
import 'package:lawyer_erp/src/ui/widgets/addNewCompany.dart';
import 'package:lawyer_erp/src/ui/widgets/input_with_title.dart';

class AddNewClientOffice extends StatefulWidget {
  @override
  _AddNewClientOfficeState createState() => _AddNewClientOfficeState();
}

class _AddNewClientOfficeState extends State<AddNewClientOffice>
    with TickerProviderStateMixin {
  TabController addTabController;

  @override
  void initState() {
    addTabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            basicInfo(context),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 500,
                    width: 600,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(top: 8, right: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(16)),
                      border: Border.all(color: Colors.blueGrey, width: .5),
                    ),
                    child: Scaffold(
                      appBar:
                          TabBar(controller: addTabController, tabs: <Widget>[
                        Text(
                          "Add new citizen",
                          style:
                              TextStyle(fontSize: 18, color: Colors.blueGrey),
                        ),
                        Text(
                          "Add new Company",
                          style:
                              TextStyle(fontSize: 18, color: Colors.blueGrey),
                        ),
                      ]),
                      body: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        controller: addTabController,
                        children: <Widget>[AddNewCitizen(), AddNewCompany()],
                      ),
                    ),
                  ),
                  Container(
                    height: 500,
                    width: MediaQuery.of(context).size.width > 850
                        ? MediaQuery.of(context).size.width - 850
                        : 0,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(16)),
                      border: Border.all(color: Colors.blueGrey, width: .5),
                    ),
                    child: Text(
                      "List of companies and citezens",
                      textAlign: TextAlign.center,
                      maxLines: 4,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget basicInfo(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), topLeft: Radius.circular(16)),
          border: Border.all(color: Colors.blueGrey, width: .5)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ///
          ///title
          ///
          InputWithTitleWidget(
            text: "Client Nickname :",
            fontSize: 18,
            textFieldLines: 1,
            textFieldLength: 50,
            textColor: Colors.black,
          ),

          ///
          ///short description
          ///
          InputWithTitleWidget(
            text: "Short Description ",
            fontSize: 18,
            textFieldLines: 4,
            textFieldLength: 150,
            textColor: Colors.black,
          ),

          ///
          /// logo
          ///
          InputWithTitleWidget(
            text: "Logo",
            fontSize: 18,
            textFieldLines: 1,
            textFieldLength: null,
            textColor: Colors.black,
          ),
          Container(
            width: MediaQuery.of(context).size.width * .1,
            height: MediaQuery.of(context).size.height * .1,
            padding: EdgeInsets.all(4),
            child: Image(image: AssetImage("assets/placeholder.png")),
          ),
        ],
      ),
    );
  }
}

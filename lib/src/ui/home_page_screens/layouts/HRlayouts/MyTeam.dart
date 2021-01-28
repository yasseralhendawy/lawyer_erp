import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/ui/emplyer_page/EmployerPageForManager.dart';
import 'package:lawyer_erp/src/ui/widgets/business_card.dart';
import 'package:lawyer_erp/src/ui/widgets/input_with_title.dart';

class MyTeamLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: CustomScrollView(
        //   shrinkWrap: true,
        slivers: <Widget>[
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return Container(
                  height: 350,
                  padding: EdgeInsets.only(right: 10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    border: Border.all(color: Colors.blueGrey, width: .5),
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width:400,
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        EmployerPageForManager()));
                              },
                              child: BusinessCard(
                                image: AssetImage("assets/admin.jpeg"),
                                name: "Employee Name",
                                title: "Title",
                                mobile: "01xxxxxxxxx",
                                email: "user@domain.com",
                                cardColor: Colors.blueGrey.shade50,
                              ),
                            )),
                        Container(
                          width: 650,
                            child: _widget(context)),
                      ],
                    ),
                  ),
                );
              }, childCount: 50, addRepaintBoundaries: false)),
        ],
      ),
    );
  }

  Widget _widget(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: TabBar(
          tabs: <Widget>[
            Text(
              "Give a task",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              "Warning",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
          labelColor: Colors.indigo.shade300,
          unselectedLabelColor: Colors.black38,
          indicatorColor: Colors.indigo,
          labelPadding: EdgeInsets.all(10),
        ),
        body:
            TabBarView(physics: NeverScrollableScrollPhysics(),children: [taskWidget(context), warningWidget(context)]),
      ),
    );
  }

  Widget taskWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InputWithTitleWidget(
              text: "Task Title ",
              fontSize: 14,
              textFieldLines: 1,
              textFieldLength: 50,
              textColor: Colors.black,
            ),
            InputWithTitleWidget(
              text: "Description",
              fontSize: 14,
              textFieldLines: 4,
              textColor: Colors.black,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 30, 30, 5),
              width: MediaQuery.of(context).size.width * .2,
              child: FlatButton(
                onPressed: (){},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: Colors.white)
                ),
                color: Colors.blueGrey,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 20.0,
                  ),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Expanded(
                          child: Text(
                            "Submit",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget warningWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      child: Column(
        children: <Widget>[
          InputWithTitleWidget(
            text: "Reason",
            fontSize: 14,
            textColor: Colors.black,
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            padding: EdgeInsets.fromLTRB(5, 30, 30, 5),
            width: MediaQuery.of(context).size.width * .2,
            child: FlatButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Colors.white)
              ),
              color: Colors.blueGrey,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20.0,
                ),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Expanded(
                        child: Text(
                          "Submit",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

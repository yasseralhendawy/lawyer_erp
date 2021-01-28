import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/ui/widgets/input_with_title.dart';

class AddNewEmployee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _personalInfo(context),
            Container(height: MediaQuery.of(context).size.height>800?(MediaQuery.of(context).size.height-800):0,),
            Container(
              height: 300,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    _officialInformation(),
                    Container(width: MediaQuery.of(context).size.width>1250?MediaQuery.of(context).size.width-1250:0,),
                    _jobDetails(),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: 200,
              height: 100,
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

  Widget _personalInfo(BuildContext context) {
    return Container(
      height: 300,
      padding: EdgeInsets.only(right: 10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16.0),
            topRight: Radius.circular(16.0)),
        border: Border.all(color: Colors.blueGrey, width: .5),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          // mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: 400,
              padding: EdgeInsets.only(right: 30, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(16.0),
                    topRight: Radius.circular(16.0)),
                border: Border.all(color: Colors.blueGrey, width: 1),
                color: Colors.blueGrey.shade50,
              ),
              child: Image(
                image: AssetImage("assets/placeholder.png"),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            Container(width: MediaQuery.of(context).size.width>1250?MediaQuery.of(context).size.width-1250:0,),
            Container(
              width: 600,
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InputWithTitleWidget(
                    text: "Name",
                    fontSize: 14,
                    textFieldLines: 1,
                    textFieldLength: 50,
                    textColor: Colors.black,
                  ),
                  InputWithTitleWidget(
                    text: "Personal phone",
                    fontSize: 14,
                    textFieldLines: 1,
                    textFieldLength: 50,
                    textColor: Colors.black,
                  ),
                  InputWithTitleWidget(
                    text: "Date of birth",
                    fontSize: 14,
                    textFieldLines: 1,
                    textFieldLength: 50,
                    textColor: Colors.black,
                  ),
                  InputWithTitleWidget(
                    text: "Address",
                    fontSize: 14,
                    textColor: Colors.black,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _officialInformation() {
    return Container(
      width: 500,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16.0),
            topRight: Radius.circular(16.0)),
        border: Border.all(color: Colors.blueGrey, width: .5),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InputWithTitleWidget(
            text: "Official mail",
            fontSize: 16,
            textFieldLines: 1,
            textFieldLength: 50,
            textColor: Colors.black,
          ),
          Padding(padding: EdgeInsets.all(20)),
          InputWithTitleWidget(
            text: "Official phone",
            fontSize: 16,
            textFieldLines: 1,
            textFieldLength: 50,
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }

  Widget _jobDetails() {
    return Container(
      width: 500,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16.0), topLeft: Radius.circular(16.0)),
        border: Border.all(color: Colors.blueGrey, width: .5),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InputWithTitleWidget(
            text: "Title",
            fontSize: 16,
            textFieldLines: 1,
            textFieldLength: 50,
            textColor: Colors.black,
          ),
          Padding(padding: EdgeInsets.all(20)),
          InputWithTitleWidget(
            text: "Description",
            fontSize: 16,
            textFieldLines: 1,
            textFieldLength: 50,
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

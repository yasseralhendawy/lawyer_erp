import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/ui/widgets/getFiles.dart';
import 'package:lawyer_erp/src/ui/widgets/input_with_title.dart';
import 'package:lawyer_erp/src/ui/widgets/selectLawyer.dart';
import 'package:lawyer_erp/src/ui/widgets/selectservice.dart';

class EditCaseLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          editTheCase(context),
          closeTheCase(),
        ],
      ),
    );
  }

  Widget editTheCase(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: .5,
            color: Colors.blueGrey,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8.0),
            child: InputWithTitleWidget(
              text: "About the Case :",
              fontSize: 14,
              textFieldLines: 10,
              textColor: Colors.black,
            ),
          ),
          GetCaseFiles(),
          SelectService(),
          SelectLawyer(),
          Container(
            width: 150,
            padding: EdgeInsets.all(8),
            child: FlatButton(
              onPressed:(){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Colors.black)
              ),
              color: Colors.blueGrey.shade100,
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
                          "Edit",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
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

  Widget closeTheCase() {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.blueGrey, width: .5),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(16),
              bottomLeft: Radius.circular(16))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: InputWithTitleWidget(
              text: " How the Case ended ?",
              fontSize: 14,
              textFieldLines: 30,
              textColor: Colors.black,
            ),
          ),
          Container(
            width: 180,
            padding: EdgeInsets.all(8),
            child: FlatButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Colors.black)
              ),
              color: Colors.red.shade100,
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
                          "Close",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black
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

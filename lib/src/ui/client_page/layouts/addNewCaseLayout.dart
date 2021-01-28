import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/ui/widgets/getFiles.dart';
import 'package:lawyer_erp/src/ui/widgets/input_with_title.dart';
import 'package:lawyer_erp/src/ui/widgets/selectLawyer.dart';
import 'package:lawyer_erp/src/ui/widgets/selectservice.dart';

class AddNewCaseLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        border: Border.all(color: Colors.blueGrey, width: .5),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InputWithTitleWidget(
                text: "Case Name:",
                fontSize: 14,
                textFieldLines: 1,
                textColor: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InputWithTitleWidget(
                text: "About the Case :",
                fontSize: 14,
                textFieldLines: 5,
                textColor: Colors.black,
              ),
            ),
            GetCaseFiles(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SelectLawyer(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SelectService(),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 150,
                child:  FlatButton(
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Colors.indigo)
                  ),
                  color:Colors.blueGrey.shade100,
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
                              "ADD",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.indigo,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

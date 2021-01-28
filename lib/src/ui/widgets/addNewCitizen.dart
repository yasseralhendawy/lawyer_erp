import 'package:flutter/material.dart';

import 'input_with_title.dart';

class AddNewCitizen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Flexible(
            fit: FlexFit.loose,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InputWithTitleWidget(
                text: "Name",
                fontSize: 14,
                textFieldLines: 1,
                textColor: Colors.black,
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InputWithTitleWidget(
                text: "National ID",
                fontSize: 14,
                textFieldLines: 1,
                textColor: Colors.black,
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InputWithTitleWidget(
                text: "Job :",
                fontSize: 14,
                textFieldLines: 1,
                textColor: Colors.black,
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InputWithTitleWidget(
                text: "Address :",
                fontSize: 14,
                textFieldLines: 4,
                textColor: Colors.black,
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              alignment: Alignment.bottomRight,
              width: MediaQuery.of(context).size.width * .2,
              child:  FlatButton(
                onPressed: (){},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color:Colors.white)
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
                            "ADD",
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
          ),
        ],
      ),
    );
  }
}

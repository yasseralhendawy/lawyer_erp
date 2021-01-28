import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/ui/widgets/input_with_title.dart';

class AddNewServiceLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.all(8),
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ///
            ///title
            ///
            Flexible(
              fit: FlexFit.loose,
              child: InputWithTitleWidget(
                text: "Title",
                fontSize: 18,
                textFieldLines: 1,
                textFieldLength: 50,
                textColor: Colors.black,
              ),
            ),

            ///
            ///short description
            ///
            Flexible(
              fit: FlexFit.loose,
              child: InputWithTitleWidget(
                text: "Short Description ",
                fontSize: 18,
                textFieldLines: 4,
                textFieldLength: 150,
                textColor: Colors.black,
              ),
            ),

            ///
            /// logo
            ///
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.loose,
                      child: InputWithTitleWidget(
                        text: "Logo",
                        fontSize: 18,
                        textFieldLines: 1,
                        textFieldLength: null,
                        textColor: Colors.black,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .1,
                      height: MediaQuery.of(context).size.height * .1,
                      padding: EdgeInsets.all(4),
                      child: Image(image: AssetImage("assets/placeholder.png")),
                    ),
                  ],
                ),
              ),
            ),

            ///
            ///description
            ///
            Flexible(
              fit: FlexFit.loose,
              child: InputWithTitleWidget(
                text: "Full Description ",
                fontSize: 18,
                textFieldLines: 20,
                textFieldLength: null,
                textColor: Colors.black,
              ),
            ),

            ///
            ///submit
            ///
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                padding: EdgeInsets.all(20),
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
            ),
          ],
        ),
      ),
    );
  }
}

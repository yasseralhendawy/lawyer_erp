import 'package:flutter/material.dart';

import 'input_with_title.dart';

class AddNewCompany extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> filter = [
      "مؤسسات فردية",
      "محدودة المسؤلية",
      "مساهمة خاصة",
      "مساهمة عامة",
    ];
    String _selectedFilter;
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
                text: "Company ID",
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
                text: "Industry :",
                fontSize: 14,
                textFieldLines: 1,
                textColor: Colors.black,
              ),
            ),
          ),
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Text(
                      "Type",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 5,
                    child: DropdownButton(
                      hint: Text("Type"),
                      isExpanded: true,
                      onChanged: (String newValue) {
                        _selectedFilter = newValue;
                      },
                      value: _selectedFilter,
                      items: filter.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(fontSize: 16, color: Colors.indigo.shade300),
                          ),
                        );
                      }).toList(),
                    ),
                  )
                ],
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

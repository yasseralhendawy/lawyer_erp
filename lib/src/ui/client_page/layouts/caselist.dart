import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/ui/case_page/casePage.dart';

class ClientCasesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> filter = [
      "all",
    ];
    String selectedFilter;
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16.0),
            topRight: Radius.circular(16.0)),
        border: Border.all(color: Colors.blueGrey, width: .5),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              padding: EdgeInsets.all(10),
              //     margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0)),
                border: Border.all(color: Colors.blueGrey, width: .9),
                color: Colors.white,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    fit: FlexFit.loose,
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0))),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 18.0,
                            color: Colors.blueGrey.shade300,
                          ),
                          hintText: 'Search ',
                          hintStyle: TextStyle(color: Colors.blueGrey),
                        ),
                      ),
                    ),
                  ),
                  //  Spacer(),
                  Flexible(
                    fit: FlexFit.loose,
                    child: DropdownButton(
                      hint: Text("service"),
                      isExpanded: true,
                      onChanged: (String newValue) {
                        selectedFilter = newValue;
                      },
                      value: selectedFilter,
                      items:
                          filter.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                                fontSize: 16, color: Colors.indigo.shade300),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 5,
            fit: FlexFit.loose,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 3,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return caseCard(context);
                },
                itemCount: 10,
                addRepaintBoundaries: false),
          ),
        ],
      ),
    );
  }

  Widget caseCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => CasePage()));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            border: Border.all(color: Colors.blueGrey, width: .5),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                //fit: FlexFit.loose,
                flex: 4,
                child: Container(
                  // width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height,
                  // color: Colors.blueGrey,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Case Name",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 7,
                  child: Row(
                    //  mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        //fit: FlexFit.loose,
                        flex: 2,
                        child:  Container(
                          //   width: MediaQuery.of(context).size.width,
                          // height: MediaQuery.of(context).size.height,
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                child: Text("Case ID"),
                              ),
                              Flexible(child: Text("Lawyer name"))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        //fit: FlexFit.loose,
                          flex: 2,
                          child: Container(
                            //width: MediaQuery.of(context).size.width,
                            //height: MediaQuery.of(context).size.height,
                            alignment: Alignment.center,
                            //   color: Colors.blueGrey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Flexible(
                                  child: Text(
                                    "Service Name",
                                    style: TextStyle(
                                        color: Colors.indigo, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Flexible(child: Text("1-1-2020"))
                              ],
                            ),
                          ))
                    ],
                  ))
            ],
          ),
        )
      ),
    );
  }
}

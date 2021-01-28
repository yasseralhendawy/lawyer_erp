import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/ui/widgets/input_with_title.dart';

class HomePageLayout extends StatelessWidget {
  final bool forManager;

  HomePageLayout({this.forManager: false, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            _myNotes(context),
            Container(width: 100,),
            _myTasks(context),
          ],
        ),
      ),
    );
  }

  Widget _myTasks(BuildContext context) {
    return Container(
      width: 400,
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        border: Border.all(color: Colors.blueGrey, width: 5),
        color: Colors.transparent,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0)),
                color: Colors.blueGrey.shade100,
              ),
              child: Align(
                child: Text(
                  "TASKS",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                alignment: Alignment.center,
              ),
            ),
            Container(
              height:MediaQuery.of(context).size.height>50.0? MediaQuery.of(context).size.height-50:0,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverFixedExtentList(
                    itemExtent: 200.0,
                    delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                  border: Border.all(color: Colors.blueGrey, width: .5),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                            flex: 1,
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "Task Title",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w900),
                                              ),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: Align(
                                              alignment: Alignment.topRight,
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.check_box,
                                                ),
                                                onPressed: (){},
                                                color: Colors.green,
                                              ),
                                            )),
                                      ],
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Description is here ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400),
                                          softWrap: true,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 20,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );

                      },
                      childCount: 10,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _myNotes(BuildContext context) {
    return Container(
      width: 400,
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        border: Border.all(color: Colors.blueGrey, width: 5),
        color: Colors.transparent,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0)),
                color: Colors.blueGrey.shade100,
              ),
              child: Align(
                child: Text(
                  "NOTES",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                alignment: Alignment.center,
              ),
            ),
            Container(
              height:MediaQuery.of(context).size.height>50.0? MediaQuery.of(context).size.height-50:0,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverFixedExtentList(
                    itemExtent: 200.0,
                    delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                  border: Border.all(color: Colors.blueGrey, width: .5),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                            flex: 1,
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "Note Title",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w900),
                                              ),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: Align(
                                              alignment: Alignment.topRight,
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.close,
                                                ),
                                                onPressed: (){},
                                                color: Colors.red,
                                              ),
                                            )),
                                      ],
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Description is here ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400),
                                          softWrap: true,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 20,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                      },
                      childCount: 10,
                    ),
                  )
                ],
              ),
            ),
            forManager ? Container() : _newNote(context)
          ],
        ),
      ),
    );
  }

  Widget _newNote(BuildContext context) {
    List<String> tasks = [
      "Task 1",
      "Task 2",
      "Task 3",
      "Task 4",
    ];
    String selectedTask;
    return Container(
      height: 350,
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0)),
        color: Colors.blueGrey.shade100,
        border: Border.all(
          color: Colors.blueGrey,
          width: 1,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 40,
              child: DropdownButton(
                hint: Text("Select Task"),
                isExpanded: true,
                onChanged: (String newValue) {
                  selectedTask = newValue;
                },
                value: selectedTask,
                items: tasks.map<DropdownMenuItem<String>>((String value) {
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
            Container(
              height: 300,
              padding: EdgeInsets.only(top: 5),
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    InputWithTitleWidget(
                      text: "Note Title ",
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
                        onPressed: () {},
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
            ),
          ],
        ),
      ),
    );
  }
}

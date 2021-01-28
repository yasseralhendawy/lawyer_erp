import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lawyer_erp/src/ui/emplyer_page/EmployerPage.dart';
import 'package:lawyer_erp/src/ui/widgets/business_card.dart';

class EmployeesLayout extends StatefulWidget {
  @override
  _EmployeesLayoutState createState() => _EmployeesLayoutState();
}

class _EmployeesLayoutState extends State<EmployeesLayout> {
  List<String> departments = [
    "All",
    "Lawyers",
    "Office",
    "Others",
  ];

  String selectedDepartment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: CustomScrollView(
        //   shrinkWrap: true,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent,
            // floating: true,
            pinned: true,
            flexibleSpace: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 200,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0))),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30.0,
                            color: Colors.indigo.shade300,
                          ),
                          hintText: 'Search ',
                          hintStyle: TextStyle(color: Colors.blueGrey),
                        ),
                      ),
                    ),
                    MediaQuery.of(context).size.width>650?Container(width: MediaQuery.of(context).size.width-650,):Container(),
                    Container(
                      width: 200,
                      child: DropdownButton(
                        hint: Text("All"),
                        isExpanded: true,
                        onChanged: (String newValue) {
                          selectedDepartment = newValue;
                        },
                        value: selectedDepartment,
                        items: departments
                            .map<DropdownMenuItem<String>>((String value) {
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
          ),
          MediaQuery.of(context).size.width<250?SliverToBoxAdapter(child: Container()):SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 600.0,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 20.0,
                childAspectRatio: 2,
              ),
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EmployerPage()));
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BusinessCard(
                        image: AssetImage("assets/admin.jpeg"),
                        name: "Employee Name",
                        title: "Title",
                        mobile: "01xxxxxxxxx",
                        email: "user@domain.com",
                      ),
                    ),
                  ),
                );
              }, childCount: 50, addRepaintBoundaries: false)),
        ],
      ),
    );
  }
}

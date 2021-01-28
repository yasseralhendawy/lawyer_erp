import 'package:flutter/material.dart';

import 'layouts/HRlayouts/AddNewEmployee.dart';
import 'layouts/HRlayouts/MyTeam.dart';
import 'layouts/HRlayouts/attendance_layout.dart';
import 'layouts/HRlayouts/employeesLayout.dart';

class HRScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: TabBar(
          tabs: <Widget>[
            Text(
              "My Attendance",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              "Employees",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              "My Team",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              "Add New Employee",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
          labelColor: Colors.indigo.shade300,
          unselectedLabelColor: Colors.black38,
          indicatorColor: Colors.indigo,
          labelPadding: EdgeInsets.all(10),
        ),
        body: TabBarView(physics: NeverScrollableScrollPhysics(),children: [
          AttendanceLayout(),
          EmployeesLayout(),
          MyTeamLayout(),
          AddNewEmployee(),
        ]),
      ),
    );
  }
}

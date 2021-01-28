import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class AttendanceLayout extends StatefulWidget {
  final bool employeePage;

  AttendanceLayout({this.employeePage:false});

  @override
  _AttendanceLayoutState createState() => _AttendanceLayoutState();
}

class _AttendanceLayoutState extends State<AttendanceLayout> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _spaceWidthStandard=widget.employeePage?1350: 1250;
    return Container(
      height: MediaQuery.of(context).size.height,
 //     width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            Container(
              width:widget.employeePage?500: 700,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _vacanciesWidget(),
                    ),
                    Container(height: MediaQuery.of(context).size.height>500?MediaQuery.of(context).size.height-500:0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _dailyAttendance(),
                    ),
                  ],
                ),
              ),


            ),
            Container(width: MediaQuery.of(context).size.width>_spaceWidthStandard?MediaQuery.of(context).size.width-_spaceWidthStandard:0,),
            _calender()
          ],
        ),
      ),
    );
  }

  Widget _calender() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 400,
            color: Colors.white,
            alignment: Alignment.center,
            child: TableCalendar(
              initialCalendarFormat: CalendarFormat.week,
              weekendDays: [DateTime.saturday, DateTime.friday],
              calendarStyle: CalendarStyle(
                  todayColor: Colors.indigo.shade300,
                  selectedColor: Theme.of(context).primaryColor,
                  todayStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white)),
              headerStyle: HeaderStyle(
                centerHeaderTitle: true,
                formatButtonDecoration: BoxDecoration(
                  color: Colors.indigo.shade300,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                formatButtonTextStyle: TextStyle(color: Colors.white),
                formatButtonShowsNext: false,
              ),
              startingDayOfWeek: StartingDayOfWeek.monday,
              /*onDaySelected: (date, events) {
                print(date.toIso8601String());
              },
               */
              builders: CalendarBuilders(
                selectedDayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
                todayDayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.indigo.shade300,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              calendarController: _controller,
            ),
          ),
        ],
      ),
    );
  }

  Widget _vacanciesWidget() {
    return Container(
      height: 150,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16.0),
            topRight: Radius.circular(16.0)),
        border: Border.all(color: Colors.blueGrey, width: .5),
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(16.0),
                      topRight: Radius.circular(16.0)),
                  border: Border.all(color: Colors.blueGrey, width: 1),
                  color: Colors.blueGrey.shade200,
                ),
                alignment: Alignment.center,
                child: Text("Paid Time Off (PTO)")),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "10",
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _dailyAttendance() {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16.0),
            bottomLeft: Radius.circular(16.0)),
        border: Border.all(color: Colors.blueGrey, width: .5),
        color: Colors.white,
      ),
      margin: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16.0),
                  bottomLeft: Radius.circular(16.0)),
              border: Border.all(color: Colors.blueGrey, width: 1),
              color: Colors.blueGrey.shade200,
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Text(
                      "Arrived at :",
                      textAlign: TextAlign.center,
                    )),
                Expanded(
                    flex: 1,
                    child: Text(
                      "leave  at :",
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 16),
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Text(
                      "8 am ",
                      textAlign: TextAlign.center,
                    )),
                Expanded(
                    flex: 1,
                    child: Text(
                      "4 pm ",
                      textAlign: TextAlign.center,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

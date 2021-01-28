import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/ui/home_page_screens/layouts/HRlayouts/attendance_layout.dart';
import 'package:lawyer_erp/src/ui/widgets/business_card.dart';

class EmployerPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            // color: Colors.indigo.shade300,
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/wall.jpg'),
                colorFilter: ColorFilter.mode(
                    Colors.indigo.withOpacity(0.1), BlendMode.dstATop),
                fit: BoxFit.fill),
          ),
        ),
        leading: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          //  color: Colors.white,
          child: FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('assets/wall.jpg'),
              colorFilter: ColorFilter.mode(
                  Colors.blueGrey.withOpacity(0.1), BlendMode.dstATop),
              fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 400,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 200,
                        alignment: Alignment.center,
                        child: BusinessCard(
                          image: AssetImage("assets/admin.jpeg"),
                          name: "Employee Name",
                          title: "Title",
                          mobile: "01xxxxxxxxx",
                          email: "user@domain.com",
                        ),
                      ),
                      Container(
                        height: 500,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(16.0),
                              topRight: Radius.circular(16.0)),
                          border: Border.all(color: Colors.blueGrey, width: .5),
                          color: Colors.white,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              _privatePhone(),
                              _privateMail(),
                              _address(),
                              _dateOfBirth(),
                              _jobDescription(),
                              _numberOfWarnings(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width>400?MediaQuery.of(context).size.width-400:0,
               // margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(16.0),
                      topRight: Radius.circular(16.0)),
                  border: Border.all(color: Colors.blueGrey, width: .5),
                  color: Colors.white,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: AttendanceLayout(employeePage: true,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _numberOfWarnings() {
    return Container(
      height: 50,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              "Number of Warnings",
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w700, color: Colors.red),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              "0",
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w700, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  Widget _privatePhone() {
    return Container(
      height:50,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              "Private Phone",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              "01xxxxxxxxx",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _privateMail() {
    return Container(
      height: 50,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              "Private Mail",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              "user@privatemail.com",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _address() {
    return Container(
      height: 50,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              "Address",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              "some text here about address",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  Widget _dateOfBirth() {
    return Container(
      height: 50,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              "Date of Birth",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              "1-1-2020",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _jobDescription() {
    return Container(
      height: 200,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              "Job Description",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              "some text here about employee role ",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

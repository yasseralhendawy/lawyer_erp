import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * .4,
        height: MediaQuery.of(context).size.height * .7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          border: Border.all(color: Colors.blueGrey, width: .5),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 5,
                child: Image(
                  image: AssetImage("assets/image002.png"),
                )),
            Expanded(
              flex: 1,
              child: Text(
                "This Application is Powered by Collins",
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                "Feel free to Contact us at",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                "info@collinscbs.com",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}

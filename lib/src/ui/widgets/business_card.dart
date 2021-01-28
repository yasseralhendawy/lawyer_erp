import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  final AssetImage image;
  final String name;
  final String title;
  final String mobile;
  final String email;

  final double fontSize;
  final Color cardColor;
  final Color nameColor;
  final Color titleColor;
  final Color contactColor;
  final Color borderColor;
  final double borderWidth;

  final int imageflex;

  BusinessCard(
      {Key key,
        this.image,
        this.name,
        this.title,
        this.mobile,
        this.email,
        this.fontSize: 16,
        this.cardColor: Colors.white,
        this.nameColor: Colors.black,
        this.titleColor: Colors.black,
        this.borderColor: Colors.blueGrey,
        this.borderWidth: .5,
        this.imageflex: 1,
        this.contactColor: Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16.0),
            topRight: Radius.circular(16.0)),
        border: Border.all(color: borderColor, width: borderWidth),
        color: cardColor,
      ),
      child: Row(
        children: <Widget>[
          Expanded(flex: imageflex, child: Image(image: image)),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Text(
                      name,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.w900,
                          color: nameColor),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        title,
                        //textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.w700,
                            color: titleColor),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Text(
                            "Mobile :",
                            style: TextStyle(
                                fontSize: fontSize,
                                fontWeight: FontWeight.w700,
                                color: contactColor),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            mobile,
                            style: TextStyle(
                                fontSize: fontSize,
                                fontWeight: FontWeight.w400,
                                color: contactColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Text(
                            "E-mail :",
                            style: TextStyle(
                                fontSize: fontSize,
                                fontWeight: FontWeight.w700,
                                color: contactColor),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            email,
                            style: TextStyle(
                                fontSize: fontSize,
                                fontWeight: FontWeight.w400,
                                color: contactColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

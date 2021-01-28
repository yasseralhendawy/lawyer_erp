import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///
/// Tajawal is the recommended font for this widget
///
class CardsWithIconAndDesc extends StatelessWidget {
  final CardsWithIconAndDescType type;
  final String placeHolder;
  final String cardTitle;
  final double titleFontSize;
  final Color titleColor;
  final String cardContent;
  final double contentSize;
  final Color contentColor;
  final Color cardColor;
  final Color borderColor;
  final double borderWidth;

  CardsWithIconAndDesc(
      {@required this.placeHolder,
        @required this.cardTitle,
        @required this.type,
        this.titleColor: Colors.black,
        this.cardColor: Colors.transparent,
        this.titleFontSize: 28,
        @required this.cardContent,
        this.contentColor: Colors.black,
        this.borderColor: Colors.blueGrey,
        this.borderWidth: .5,
        this.contentSize: 20,
        Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _headerFlex;
    int _footerFlex;
    int _imageFlex;
    int _titleFlex;
    switch (type){
      case CardsWithIconAndDescType.Client:
        _headerFlex=4;
        _footerFlex=3;
        _imageFlex=2;
        _titleFlex=4;
        break;
      case CardsWithIconAndDescType.Service:
        _headerFlex=2;
        _footerFlex=3;
        _imageFlex=2;
        _titleFlex=4;
        break;
    }
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: _headerFlex,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: _imageFlex,
                  child: Container(
                    child: Image.asset(
                       placeHolder,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  flex: _titleFlex,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      cardTitle,
                      softWrap: false,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: titleColor,
                          fontSize: titleFontSize,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Expanded(
            flex: _footerFlex,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                cardContent,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 20,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: contentColor,
                  fontSize: contentSize,
                  wordSpacing: 2,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
enum CardsWithIconAndDescType{
  Client,
  Service
}

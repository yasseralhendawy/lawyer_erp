import 'package:flutter/material.dart';

class InputWithTitleWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final int textFieldLines;
  final int textFieldLength;
  final TextEditingController textEditingController;
  final VoidCallback onTextFieldTap;
  final Color textEditingColor;
  final double editingTextSize;

  InputWithTitleWidget(
      {Key key,
        this.text,
        this.fontSize,
        this.textColor,
        this.textFieldLines,
        this.textFieldLength,
        this.textEditingController,
        this.onTextFieldTap,
        this.textEditingColor,
        this.editingTextSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
      BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16.0))),
      child: Row(
        children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w900,
                color: textColor,
              ),
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          Spacer(),
          Expanded(
            flex: 5,
            child: TextField(
              controller: textEditingController,
              style:
              TextStyle(color: textEditingColor, fontSize: editingTextSize),
              onTap: onTextFieldTap,
              cursorWidth: 3,
              maxLines: textFieldLines,
              maxLength: textFieldLength,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  //errorText: snapshot.error,
                  hintStyle: TextStyle(color: Colors.red)),
            ),
          )
        ],
      ),
    );
  }
}

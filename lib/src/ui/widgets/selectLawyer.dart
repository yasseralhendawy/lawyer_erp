import 'package:flutter/material.dart';

class SelectLawyer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> filter = [
      "all",
    ];
    String _selectedFilter;
    return Row(
      children: <Widget>[
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: Text(
            "Select Lawyer",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        Spacer(),
        Expanded(
          flex: 5,
          child: DropdownButton(
            hint: Text("Lawyers"),
            isExpanded: true,
            onChanged: (String newValue) {
              _selectedFilter = newValue;
            },
            value: _selectedFilter,
            items: filter.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(fontSize: 16, color: Colors.indigo.shade300),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}

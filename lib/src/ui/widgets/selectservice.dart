import 'package:flutter/material.dart';
import 'package:lawyer_erp/src/models/service.dart';

class SelectService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> filter = [];
    for (int i = 0; i < Service.myDemo.length; i++) {
      filter.add(Service.myDemo[i].title);
    }
    String _selectedFilter;

    return Row(
      children: <Widget>[
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: Text(
            "Select service",
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
            hint: Text("Service"),
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

import 'package:flutter/material.dart';

class CustomActionColumn extends StatelessWidget {
  final String header;
  final List<String> fetchState;
  final double horizontalMargin;
  const CustomActionColumn(
      {this.header, this.fetchState, this.horizontalMargin});

  @override
  Widget build(BuildContext contex) {
    return DataTable(
      horizontalMargin: horizontalMargin != null ? horizontalMargin : 10,
      dividerThickness: 0,
      headingRowHeight: 35,
      dataRowHeight: 38,
      columns: [
        DataColumn(label: Text(header, style: TextStyle(color: Colors.white))),
      ],
      rows: fetchState.asMap().entries.map((entry) {
        IconData actionIcon = Icons.visibility;
        return DataRow(cells: [
          DataCell(Container(
              child: GestureDetector(
            onTap: () {
              print('Get State Statisitcs for: ${entry.value}');
            },
            child: Icon(
              actionIcon,
              size: 15,
            ),
          ))),
        ]);
      }).toList(),
    );
  }
}

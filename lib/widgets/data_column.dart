import 'package:alpha_build/auxiliary/style.dart';
import 'package:flutter/material.dart';

class CustomDataColumn extends StatelessWidget {
  final String header;
  final IconData headerIcon;
  final List<String> dataEntries;
  final double horizontalMargin;
  const CustomDataColumn(
      {@required this.dataEntries,
      this.header,
      this.headerIcon,
      this.horizontalMargin});

  @override
  Widget build(BuildContext contex) {
    return DataTable(
      horizontalMargin: horizontalMargin != null ? horizontalMargin : 10,
      dividerThickness: 0,
      headingRowHeight: 35,
      dataRowHeight: 38,
      columns: [
        DataColumn(
          label: Row(
            children: [
              Icon(
                headerIcon,
                size: 18,
                color: primaryOrange,
              ),
              Text(
                header == null ? '' : header,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
      rows: dataEntries.asMap().entries.map((entry) {
        String val = entry.value;
        return DataRow(cells: [
          DataCell(
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 23.0),
                child: Text(val),
              ),
            ),
          ),
        ]);
      }).toList(),
    );
  }
}

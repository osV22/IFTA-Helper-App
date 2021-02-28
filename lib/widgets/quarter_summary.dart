import 'package:alpha_build/auxiliary/style.dart';
import 'package:alpha_build/widgets/actions_column.dart';
import 'package:alpha_build/widgets/data_column.dart';
import 'package:flutter/material.dart';

class QuarterSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Quarter Summary',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: primaryGrey,
                ),
              ),
              Row(
                children: [
                  Text('Q1'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(
                      Icons.circle,
                      size: 5,
                    ),
                  ),
                  Text('2021'),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Stack(
            children: [
              Container(
                height: 160,
                decoration: BoxDecoration(
                  color: primaryGrey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    // 47.5 is the height for EACH row
                    // So 5 should be changed to length of states
                    height: (39.0 * 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                  ),
                ),
              ),
              // TODO: Remove divider color
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomDataColumn(
                      header: ' State',
                      headerIcon: Icons.location_pin,
                      // ! USE THIS ON PRODUCTION
                      // colEntries: fuelEntries.asMap().entries.map((entry) {
                      //   return entry.value.state.toString();
                      // }).toList(),
                      //* Sample placeholder data
                      dataEntries: [
                        'Michigan',
                        'Wisconsin',
                        'Massachusetts',
                        'Florida',
                        'New York',
                      ],
                    ),
                    CustomDataColumn(
                      horizontalMargin: 0,
                      header: '',
                      dataEntries: [
                        'MI',
                        'WI',
                        'MA',
                        'FL',
                        'NY',
                      ],
                    ),
                    // SizedBox(width: 20),
                    CustomDataColumn(
                      horizontalMargin: 10,
                      header: ' Miles',
                      headerIcon: Icons.speed,
                      dataEntries: [
                        '20',
                        '40',
                        '30',
                        '10',
                        '100',
                      ],
                    ),
                    CustomDataColumn(
                      horizontalMargin: 0,
                      header: ' Fuel',
                      headerIcon: Icons.local_gas_station,
                      dataEntries: [
                        '20',
                        '40',
                        '30',
                        '10',
                        '100',
                      ],
                    ),
                    CustomActionColumn(
                      horizontalMargin: 15,
                      header: '',
                      fetchState: [
                        'MI',
                        'WI',
                        'MA',
                        'FL',
                        'NY',
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: primaryGrey,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 35),
                    Text(
                      'Totals',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 90,
                          color: primaryOrange,
                          child: Center(child: Text('Fuel')),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 40,
                          width: 90,
                          color: primaryOrange,
                          child: Center(child: Text('Fuel')),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Container(
                height: 20,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

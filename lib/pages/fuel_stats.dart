import 'package:flutter/material.dart';

class FuelPage extends StatefulWidget {
  const FuelPage({Key key}) : super(key: key);

  @override
  _FuelPageState createState() => _FuelPageState();
}

class _FuelPageState extends State<FuelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 300,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              color: Colors.red,
              child: Center(
                  child: Text(
                'Fuel -- $index',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                ),
              )),
            ),
          );
        },
      ),
    );
  }
}

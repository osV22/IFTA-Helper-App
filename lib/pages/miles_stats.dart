import 'package:flutter/material.dart';

class MilesPage extends StatefulWidget {
  @override
  _MilesPageState createState() => _MilesPageState();
}

class _MilesPageState extends State<MilesPage> {
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
                'Miles -- $index',
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

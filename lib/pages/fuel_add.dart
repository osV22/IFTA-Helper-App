import 'package:flutter/material.dart';

class FuelAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 300,
          color: Colors.amber,
          child: Center(
            child: Text(
              'ADD FUEL PAGE',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}

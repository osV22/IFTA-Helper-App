import 'package:flutter/material.dart';

class MilesAddMulti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 300,
          color: Colors.greenAccent,
          child: Center(
            child: Text(
              'ADD MULTI State Miles PAGE',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class OnboardOne extends StatelessWidget {
  const OnboardOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
          child: Center(
            child: Text(
              'Onboard 1 Screen',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}

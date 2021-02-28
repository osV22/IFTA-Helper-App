import 'package:alpha_build/pages/fuel_stats.dart';
import 'package:alpha_build/pages/login.dart';
import 'package:alpha_build/pages/onboarding/onboard_one.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TempPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TUT'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 70,
                    child: RaisedButton(
                      color: Colors.amber,
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 25),
                      ),
                      onPressed: () => Get.to(LoginPage()),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 70,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text(
                        'Onboarding',
                        style: TextStyle(fontSize: 25),
                      ),
                      onPressed: () => Get.to(OnboardOne()),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 70,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text(
                        'Fuel Stat',
                        style: TextStyle(fontSize: 25),
                      ),
                      onPressed: () => Get.to(FuelPage()),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 70,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.purple,
                      child: Text(
                        'QR Activiate',
                        style: TextStyle(fontSize: 25),
                      ),
                      onPressed: () => Get.to(FuelPage()),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

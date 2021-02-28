import 'dart:ui';

import 'package:alpha_build/controllers/auth_controller.dart';
import 'package:alpha_build/widgets/normal_carousel.dart';
import 'package:alpha_build/widgets/quarter_summary.dart';
import 'package:alpha_build/widgets/rounded_carousel.dart';
import 'package:flutter/material.dart';
import 'package:alpha_build/auxiliary/style.dart';
import 'package:get/get.dart';

class DashboardPage extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tintedWhite,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profPic.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome back,'),
                        Text('Jason!'),
                      ],
                    ),
                    RaisedButton(
                      onPressed: () {
                        controller.signOut();
                      },
                      child: Text('Sign Out'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Container(
                  height: 66,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.red[400],
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 12, 0, 10),
                        child: Row(
                          children: [
                            Container(
                              width: 90,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Estimated Return',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                  Text(
                                    '125',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 12),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.attach_money,
                                size: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 10,
                        child: Icon(
                          Icons.swap_horizontal_circle,
                          color: Colors.white,
                          size: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              RoundedCarousel(),
              SizedBox(height: 20),
              NormalCarousel(),
              SizedBox(height: 20),
              QuarterSummary(),
            ],
          ),
        ),
      ),
    );
  }
}

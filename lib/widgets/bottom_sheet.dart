import 'package:alpha_build/pages/miles_multi_add.dart';
import 'package:alpha_build/pages/miles_single_add.dart';
import 'package:alpha_build/pages/temp_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void settingModalBottomSheet(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                // ADD ROUTE LATER
                milesBottomSheet(context);
                print('clicked Miles');
              },
              child: Container(
                height: 100,
                width: 150,
                color: Colors.cyan,
                child: Center(
                  child: Text('Miles'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(TempPages());
              },
              child: Container(
                height: 100,
                width: 150,
                color: Colors.green[200],
                child: Center(
                  child: Text('Fuel'),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

void milesBottomSheet(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                // ADD ROUTE LATER

                print('Single-State');
                Get.to(MilesAddSingle());
              },
              child: Container(
                height: 100,
                color: Colors.cyan,
                child: Center(
                  child: Text('Single-State'),
                ),
              ),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                print('Multi-State');
                Get.to(MilesAddMulti());
              },
              child: Container(
                height: 100,
                color: Colors.green[200],
                child: Center(
                  child: Text('Multi-State Trip'),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

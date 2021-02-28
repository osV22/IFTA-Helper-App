import 'package:alpha_build/auxiliary/style.dart';
import 'package:flutter/material.dart';

class RoundedCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              //! TODO: Make this a parameter along with list, etc...
              'Fuel',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: primaryGrey,
              ),
            ),
            Container(
              height: 20,
              decoration: BoxDecoration(
                color: Colors.amber[100],
              ),
              child: Center(child: Text('See all')),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          width: 400,
          height: 90,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
                bottomLeft: Radius.circular(100),
              )),
          child: Row(
            children: [
              SizedBox(width: 30),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 14) {
                      return Container(
                        height: 10,
                        width: 90,
                        color: Colors.amber,
                        child: Center(child: Text('See all')),
                      );
                    }
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 10,
                        width: 80,
                        color: Colors.green,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

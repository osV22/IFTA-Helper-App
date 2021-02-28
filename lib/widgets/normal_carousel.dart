import 'package:alpha_build/auxiliary/style.dart';
import 'package:flutter/material.dart';

class NormalCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Miles',
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
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: defaultPadding),
          child: Container(
            height: 100,
            color: Colors.green,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 19,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 25,
                    width: 80,
                    color: Colors.amberAccent,
                    child: Column(
                      children: [
                        Text('MI'),
                        Text('234'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:alpha_build/auxiliary/style.dart';
import 'package:alpha_build/controllers/nav_controller.dart';
import 'package:alpha_build/widgets/bottom_sheet.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget menuItem({int tabIndex, String tabTitle, IconData tabIcon}) {
  NavController navController = Get.put(NavController());

  return Obx(() {
    Color stateColor =
        navController.selectedIndex == tabIndex ? primaryOrange : primaryGrey;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            navController.updateIndex(tabIndex);
          },
          icon: Icon(
            tabIcon,
          ),
          color: stateColor,
        ),
        Transform.translate(
            offset: Offset(0, -8),
            child: Text(
              tabTitle,
              style: TextStyle(color: stateColor),
            )),
      ],
    );
  });
}

//! TODO: Instead of two, add indexstack, then switch between them
Widget floatingButtonCustom(dynamic context) {
  return Transform.translate(
    offset: Offset(0, 25),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
      width: 68.0,
      height: 68.0,
      child: new RawMaterialButton(
        shape: new CircleBorder(),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          settingModalBottomSheet(context);
        },
      ),
    ),
  );
}

final double fabSize = 62;
final double navHeight = 68;
final double fabMargin = 8;
final int itemsCount = 5;

class MyBottomNavigationCustomPainter extends CustomPainter {
  final double targetXPercent;
  final double fabSize;
  final double fabMargin;

  MyBottomNavigationCustomPainter(
    this.targetXPercent,
    this.fabSize,
    this.fabMargin,
  );

  @override
  void paint(Canvas canvas, Size size) {
    double holeWidth = 100;
    double holeWidthThird = (holeWidth / 3) * 2;
    double holeHeight = fabSize + fabMargin;

    double top = fabSize / 2;

    Path p = new Path();

    final targetX = size.width * targetXPercent;

    p.moveTo(0, top);

    final point1 = Offset(targetX - holeWidthThird, top);
    p.lineTo(point1.dx, point1.dy);

    final point2 = Offset(targetX, holeHeight);

    final controlPoint1 = Offset(point1.dx + 25, top);
    final controlPoint2 = Offset(point1.dx + 30, holeHeight);

    p.cubicTo(
      controlPoint1.dx,
      controlPoint1.dy,
      controlPoint2.dx,
      controlPoint2.dy,
      point2.dx,
      point2.dy,
    );

    final point3 = Offset(targetX + holeWidthThird, top);
    final controlPoint3 = Offset(point3.dx - 30, holeHeight);
    final controlPoint4 = Offset(point3.dx - 25, top);

    p.cubicTo(
      controlPoint3.dx,
      controlPoint3.dy,
      controlPoint4.dx,
      controlPoint4.dy,
      point3.dx,
      point3.dy,
    );

    p.lineTo(size.width, top);
    p.lineTo(size.width, size.height);
    p.lineTo(0, size.height);
    p.lineTo(0, top);

    canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawPath(
        p,
        Paint()
          ..color = Color(0xFFF5F5F5)
          ..style = PaintingStyle.fill);
  }

  void drawPoint(Canvas canvas, Offset point) {
    canvas.drawCircle(point, 3, Paint()..color = Colors.red);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

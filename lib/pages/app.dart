import 'package:alpha_build/controllers/nav_controller.dart';
import 'package:alpha_build/pages/dashboard.dart';
import 'package:alpha_build/pages/fuel_stats.dart';
import 'package:alpha_build/pages/miles_stats.dart';
import 'package:alpha_build/pages/settings.dart';
import 'package:alpha_build/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NavController navController = Get.put(NavController());

  List<Widget> _pages = [
    DashboardPage(),
    FuelPage(),
    MilesPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: Obx(() {
        return IndexedStack(
          index: navController.selectedIndex,
          children: _pages,
        );
      }),
      floatingActionButton: floatingButtonCustom(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: navHeight + 28,
        child: Stack(
          children: [
            CustomPaint(
              painter: MyBottomNavigationCustomPainter(0.5, fabSize, fabMargin),
              size: Size(
                double.infinity,
                navHeight + fabSize / 2,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: navHeight,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    menuItem(
                      tabIndex: 3,
                      tabTitle: 'Settings',
                      tabIcon: Icons.settings,
                    ),
                    menuItem(
                      tabIndex: 2,
                      tabTitle: 'Miles',
                      tabIcon: Icons.speed,
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Container(
                      child: menuItem(
                        tabIndex: 1,
                        tabTitle: 'Fuel',
                        tabIcon: Icons.local_gas_station,
                      ),
                    ),
                    menuItem(
                      tabIndex: 0,
                      tabTitle: 'Home',
                      tabIcon: Icons.home,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

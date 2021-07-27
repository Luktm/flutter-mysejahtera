import 'package:flutter/material.dart';
import 'package:mysejahtera_app/utils/constant_util.dart';

import 'dashboard_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController(initialPage: 0);
  double _selectedIndex = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      _selectedIndex = _pageController.page!;
    });
  }
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  Widget _buildTabItem({
    required IconData iconData,
    required String text,
    required int index,
    required VoidCallback onPressed,
  }) {
    Color color = _selectedIndex.floor() == index ? Colors.black : Colors.grey;
    return Expanded(
      child: SizedBox(
        height: 50,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: onPressed,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(iconData, color: color, size: 20),
                Text(
                  text,
                  style: TextStyle(color: color),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: K.bottomQRBgColor,
        onPressed: () {
          setState(() {
            _pageController.jumpToPage(2);
          });
        },
        child: Icon(
          Icons.qr_code_2_outlined,
          size: 40,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildTabItem(
              iconData: Icons.home_outlined,
              text: 'Dashboard',
              index: 0,
              onPressed: () {
                setState(() {
                  _pageController.jumpToPage(0);
                });
              },
            ),
            _buildTabItem(
              iconData: Icons.notifications_none_outlined,
              text: 'Notification',
              index: 1,
              onPressed: () {
                setState(() {
                  _pageController.jumpToPage(1);
                });
              },
            ),
            SizedBox(width: 40), // The dummy child
            _buildTabItem(
              iconData: Icons.pie_chart_outline,
              text: 'Statistic',
              index: 3,
              onPressed: () {
                setState(() {
                  _pageController.jumpToPage(3);
                });
              },
            ),
            _buildTabItem(
              iconData: Icons.person_outline,
              text: 'Profile',
              index: 4,
              onPressed: () {
                setState(() {
                  _pageController.jumpToPage(4);
                });
              },
            ),
          ],
        ),
        shape: CircularNotchedRectangle(),
        color: K.bottomNavBgColor,
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (int index) {
          // get page index on changed
        },
        children: <Widget>[
          Center(
            child: Container(
              child: DashboardScreen(),
            ),
          ),
          Center(
            child: Container(
              child: Text('Empty Body 1'),
            ),
          ),
          Center(
            child: Container(
              child: Text('Empty Body 2'),
            ),
          ),
          Center(
            child: Container(
              child: Text('Empty Body 3'),
            ),
          ),
          Center(
            child: Container(
              child: Text('Empty Body 4'),
            ),
          ),
        ],
      ),
    );
  }
}

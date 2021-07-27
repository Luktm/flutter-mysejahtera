import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mysejahtera_app/utils/constant_util.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context).size;

    double dividedHeight = deviceData.height / 3;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: dividedHeight,
            width: double.infinity,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0.1,
                    0.3,
                    0.5,
                    0.7,
                    0.9,
                  ],
                  colors: [
                    Color(0xFF9399e0),
                    Color(0xFF8794e2),
                    Color(0xFF84d7f5),
                    Color(0xFF84d7f5),
                    Color(0xFFefddd1),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                leading: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                ),
                title: Text('mysejahtera'),
                centerTitle: false,
                actions: [
                  Container(
                    color: Colors.white,
                    width: 100,
                    child: Center(
                        child: Row(
                      children: [
                        Icon(Icons.location_on, color: K.primaryColor,),
                        Column(
                          children: [
                            Text(
                              'fjdlks',
                              style: K.bottomIconTextStyle,
                            ),
                          ],
                        ),
                      ],
                    )),
                  ),
                ],
              ),
              body: AnnotatedRegion<SystemUiOverlayStyle>(
                value: SystemUiOverlayStyle.light,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        'fdsfdsfdfsafafds',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

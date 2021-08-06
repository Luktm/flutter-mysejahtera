import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mysejahtera_app/models/group_user.dart';
import 'package:mysejahtera_app/utils/constant_util.dart';
import 'package:mysejahtera_app/utils/widget_util.dart';
import 'package:mysejahtera_app/widgets/color_button_widget.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<GroupUser> _avatarPathList = [
    GroupUser(
      id: Random().nextInt(1000),
      name: 'Khairy',
      imagePath: 'assets/images/khairy.jpeg',
    ),
    GroupUser(
      id: Random().nextInt(1000),
      name: 'Azmin',
      imagePath: 'assets/images/azmin.jpeg',
    ),
    GroupUser(
      id: Random().nextInt(1000),
      name: 'Hisham',
      imagePath: 'assets/images/hisham.jpg',
    ),
    GroupUser(
      id: Random().nextInt(1000),
      name: 'Lee',
      imagePath: 'assets/images/lcw.jpeg',
    ),
  ];

  Widget _buildHeaderOverviewCardButton({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 5.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(icon, size: 30),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: K.headerBoxTitleTextStyle,
                ),
                Text(
                  subtitle,
                  style: K.headerBoxSubtitleTextStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEssentialUseButtonWithText({
    required IconData icon,
    required String title,
    required Color color,
    Function()? onPressed,
  }) {
    return Column(
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: color,
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            onPressed: onPressed ?? () {},
            child: Icon(
              icon,
              size: 30,
            )),
        SizedBox(height: 10),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context).size;

    double dividedHeight = deviceData.height / 1.8;

    var sizedBox30h = SizedBox(height: 30);
    var sizedBox20h = SizedBox(height: sizedBox30h.height! - 10.0);

    var divider = Divider(height: 2, color: Colors.grey);

    const IconData updateProfileIcon = Icons.note_alt_outlined;
    const IconData groupCheckInIcon = Icons.people;
    const IconData travelPassIcon = Icons.card_travel_outlined;
    const IconData vaccineEducationIcon = Icons.book_outlined;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: dividedHeight,
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
          Positioned(
            top: deviceData.height / 22,
            right: 20,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.black,
                  ),
                  SizedBox(width: 5),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SUBANG JAYA',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                      Text(
                        'red zone',
                        textAlign: TextAlign.left,
                        style: K.bottomIconTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Scaffold(
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
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Hey Luk, mask up!\nThere are 24 new cases\nnear you this week.',
                    textAlign: TextAlign.left,
                    style: K.headerTitleTextStyle,
                  ),
                  sizedBox30h,
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildHeaderOverviewCardButton(
                        icon: Icons.show_chart,
                        title: '7,843',
                        subtitle: 'new cases today',
                      ),
                      _buildHeaderOverviewCardButton(
                        icon: Icons.masks_outlined,
                        title: 'MCO 3.0',
                        subtitle: 'view guideline',
                      ),
                    ],
                  ),
                  sizedBox30h,
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/images/vaccine.png'),
                        ),
                        Image.asset('assets/images/vaccine.png'),
                      ],
                    ),
                  ),
                  sizedBox30h,
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.all(15),
                    color: Colors.orange[50],
                    child: GestureDetector(
                      onTap: () {
                        print('nani');
                      },
                      child: Row(
                        children: [
                          Icon(Icons.warning_rounded, color: Colors.orange),
                          SizedBox(width: 20),
                          Text(
                            'You are residing in a red zone.\nLearn what this means for you',
                            style: K.headerBoxSubtitleTextStyle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Flexible(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  sizedBox20h,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildEssentialUseButtonWithText(
                          color: K.bluePurpleColor,
                          icon: updateProfileIcon,
                          title: 'Update\nprofile',
                        ),
                        _buildEssentialUseButtonWithText(
                          color: K.lightBlueColor,
                          icon: groupCheckInIcon,
                          title: 'Group\ncheck-in',
                          onPressed: () {
                            WidgetUtil.displayBottomSheet(
                              context: context,
                              widget: [
                                sizedBox30h,
                                Icon(groupCheckInIcon,
                                    color: K.lightBlueColor, size: 70),
                                Text(
                                  'Group Check-in',
                                  style: K.headerBoxTitleTextStyle,
                                  textAlign: TextAlign.center,
                                ),
                                sizedBox20h,
                                divider,
                                Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.circle_outlined,
                                        color: K.lightBlueColor,
                                      ),
                                      SizedBox(width: 10),
                                      Text('Who are you checking-in with?',
                                          style: K.headerBoxTitleTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: List.generate(
                                      4,
                                      (index) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              radius: 30,
                                              backgroundImage: AssetImage(
                                                _avatarPathList[index]
                                                    .imagePath,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              _avatarPathList[index].name,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                sizedBox20h,
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: K.doubleNum25,
                                  ),
                                  child: ColorButtonWidget(
                                    icon: Icons.add,
                                    buttonText: 'Add new favourite',
                                    primaryColor: Colors.grey[200],
                                    onPrimaryColor: Colors.black,
                                  ),
                                ),
                                sizedBox20h,
                                divider,
                                sizedBox20h,
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: K.doubleNum25,
                                  ),
                                  child: ColorButtonWidget(
                                    buttonText: 'Scan Check-in QR',
                                    primaryColor: K.lightBlueColor,
                                  ),
                                ),
                                sizedBox30h,
                              ],
                            );
                          },
                        ),
                        _buildEssentialUseButtonWithText(
                          color: K.lightPurpleColor,
                          icon: travelPassIcon,
                          title: 'Travel\npass',
                        ),
                        _buildEssentialUseButtonWithText(
                          color: K.oceanBlueColor,
                          icon: vaccineEducationIcon,
                          title: 'Vaccine\neducation',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

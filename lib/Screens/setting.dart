import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/my_profile.dart';
import 'package:online_shoping_app/Wigets/Large_bottons.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  void toggleSwitch1(bool value) {
    setState(() {
      isSwitched1 = value;
    });
  }

  void toggleSwitch2(bool value) {
    setState(() {
      isSwitched2 = value;
    });
  }

  void toggleSwitch3(bool value) {
    setState(() {
      isSwitched3 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (e) => MyProfile()));
            },
            child: Icon(Icons.arrow_back_ios)),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Setting',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Personal Information'),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Full name',
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Date of Birth',
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Passward'),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Container(
                              height: double.maxFinite,
                              width: double.maxFinite,
                              child: Column(
                                children: [
                                  Text(
                                    'Change Password',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Old Password',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide.none),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('Forget Password?'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: 'New Password',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide.none),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Repeat New Password',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide.none),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  LargeBottons(bottonName: 'Save password'),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Text(
                    'change',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            Text('Notification'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sale',
                  style: TextStyle(fontSize: 16),
                ),
                Switch(
                  value: isSwitched1,
                  onChanged: toggleSwitch1,
                  activeColor: Colors.white,
                  activeTrackColor: Colors.lightGreenAccent,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Colors.grey[100],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New arrivals',
                  style: TextStyle(fontSize: 16),
                ),
                Switch(
                  value: isSwitched2,
                  onChanged: toggleSwitch2,
                  activeColor: Colors.white,
                  activeTrackColor: Colors.lightGreenAccent,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Colors.grey[100],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery status changes',
                  style: TextStyle(fontSize: 16),
                ),
                Switch(
                  value: isSwitched3,
                  onChanged: toggleSwitch3,
                  activeColor: Colors.white,
                  activeTrackColor: Colors.lightGreenAccent,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Colors.grey[100],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

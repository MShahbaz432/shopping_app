import 'dart:math';

import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/categories.dart';
import 'package:online_shoping_app/Screens/main_screen.dart';
import 'package:online_shoping_app/Screens/my_bag.dart';
import 'package:online_shoping_app/Screens/my_profile.dart';
import 'package:online_shoping_app/Wigets/Large_bottons.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (e) => MainScreen()));
                },
                child: Icon(
                  Icons.home,
                  size: width * 0.1,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (e) => Categories()));
                },
                child: Icon(
                  Icons.shopping_cart_outlined,
                  size: width * 0.1,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (e) => MyBag()));
                },
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: width * 0.1,
                ),
              ),
              Icon(
                Icons.favorite_border,
                size: width * 0.1,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (e) => MyProfile()));
                },
                child: Icon(
                  Icons.person,
                  size: width * 0.1,
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              unselectedLabelStyle: TextStyle(fontSize: 10),
              tabs: [
                Tab(
                  text: 'Delivered',
                ),
                Tab(
                  text: 'Processing',
                ),
                Tab(
                  text: 'Cancelled',
                ),
              ]),
          leading: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (e) => MyProfile()));
            },
            child: Icon(Icons.arrow_back_ios),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.search),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Order',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        height: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Order №1947034',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '05-12-2019',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 16),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Tracking number:',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 16),
                                ),
                                Text(
                                  ' IW3475453455',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Quantity :',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black54),
                                ),
                                Text(' 3',
                                    style: TextStyle(
                                      fontSize: 16,
                                    )),
                                Spacer(),
                                Row(
                                  children: [
                                    Text(
                                      ' Total Amount :',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black54),
                                    ),
                                    Text(
                                      '112\$',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 35,
                                  child: LargeBottons(
                                    bottonName: 'Detail',
                                    backgroundcolor: Colors.transparent,
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                    bordercolor: Colors.black,
                                    borderwithd: 1,
                                  ),
                                ),
                                Text(
                                  'Delivered',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green),
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

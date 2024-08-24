import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/categories.dart';
import 'package:online_shoping_app/Screens/favourite.dart';
import 'package:online_shoping_app/Screens/main_screen.dart';
import 'package:online_shoping_app/Screens/my_bag.dart';
import 'package:online_shoping_app/Screens/my_order.dart';
import 'package:online_shoping_app/Screens/payment_method.dart';
import 'package:online_shoping_app/Screens/rating_review.dart';
import 'package:online_shoping_app/Screens/setting.dart';
import 'package:online_shoping_app/Screens/shipping_addresses.dart';
import 'package:online_shoping_app/Screens/visual_search_screen.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (e) => MainScreen()),
                );
              },
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (e) => MainScreen()),
                  );
                },
                child: Icon(
                  Icons.home,
                  size: width * 0.1,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (e) => Categories()),
                );
              },
              child: Icon(
                Icons.shopping_cart_outlined,
                size: width * 0.1,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (e) => MyBag()),
                );
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: width * 0.1,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (e) => Favourite()));
              },
              child: Icon(
                Icons.favorite_border,
                size: width * 0.1,
              ),
            ),
            Icon(
              Icons.person,
              size: width * 0.1,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (e) => VisualSearchScreen(),
                  ),
                );
              },
              child: Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My profile',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/visual_pics/black.jpeg'),
                    radius: 35,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        'Profile Name',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      Text('Email id'),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'My Orders',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (e) => MyOrder()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Already have 12 orders'),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
              Divider(),
              Text(
                'Shipping addresses',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (e) => ShippingAddresses()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('3 ddresses'),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              Divider(),
              Text(
                'Payment methods',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (e) => PaymentMethod()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Visa  **34'),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              Divider(),
              Text(
                'Promocodes',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('You have special promocodes'),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              Divider(),
              Text(
                'My reviews',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (e) => RatingReview()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Reviews for 4 items'),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              Divider(),
              Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (e) => Setting()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Notifications, password'),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

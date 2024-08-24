import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/favourite.dart';
import 'package:online_shoping_app/Screens/my_bag.dart';
import 'package:online_shoping_app/Screens/my_profile.dart';
import 'package:online_shoping_app/Wigets/main_sale.dart';
import 'package:online_shoping_app/Screens/categories.dart';
import 'package:online_shoping_app/Screens/street_clothes.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
            Icon(
              Icons.home,
              color: Colors.black54,
              size: width * 0.1,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Categories()));
              },
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black54,
                size: width * 0.1,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (content) => MyBag()));
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black54,
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
                color: Colors.black54,
                size: width * 0.1,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (e) => MyProfile(),
                  ),
                );
              },
              child: Icon(
                Icons.person,
                color: Colors.black54,
                size: width * 0.1,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StreetClothes()));
                  },
                  // carousslider on pub dev
                  child: Container(
                    height: height * 0.28,
                    width: width,
                    child: Image(
                      image: AssetImage('assets/visual_pics/main_one.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: height * 0.03,
                  left: width * 0.03,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StreetClothes()));
                    },
                    child: Text(
                      'Street clothes',
                      style: TextStyle(
                        fontSize: width * 0.07,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sale',
                        style: TextStyle(
                          fontSize: width * 0.08,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(fontSize: width * 0.05),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Super summer sale',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  // color: Colors.black,
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  height: height * 0.43,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MainSale(
                          descont: '-30%',
                          imagepath: 'assets/main_pics/one.jpeg',
                          price: '12\$',
                          subtitle: 'Dorothy Perkins',
                          title: 'Evening Dress');
                    },
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'New',
                        style: TextStyle(
                          fontSize: width * 0.08,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(fontSize: width * 0.05),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'You’ve never seen it before!',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // color: Colors.black,
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              height: height * 0.400,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MainSale(
                      descont: 'New',
                      imagepath: 'assets/main_pics/one.jpeg',
                      price: '12\$',
                      subtitle: 'Dorothy Perkins',
                      title: 'Evening Dress',
                      containerColor: Colors.black,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

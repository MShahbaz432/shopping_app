import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/categories.dart';
import 'package:online_shoping_app/Screens/check_out.dart';
import 'package:online_shoping_app/Screens/favourite.dart';
import 'package:online_shoping_app/Screens/main_screen.dart';
import 'package:online_shoping_app/Screens/my_profile.dart';
import 'package:online_shoping_app/Screens/visual_search_screen.dart';
import 'package:online_shoping_app/Wigets/Large_bottons.dart';
import 'package:online_shoping_app/Wigets/my_bag_product_card.dart';

class MyBag extends StatefulWidget {
  const MyBag({super.key});

  @override
  State<MyBag> createState() => _MyBagState();
}

class _MyBagState extends State<MyBag> {
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
              child: Icon(
                Icons.home,
                color: Colors.black54,
                size: width * 0.1,
              ),
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
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black54,
              size: width * 0.1,
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
                    context, MaterialPageRoute(builder: (e) => MyProfile()));
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (e) => VisualSearchScreen()),
                );
              },
              child: Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Bag',
              style: TextStyle(fontSize: 40),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, Index) {
                  return SizedBox(
                    height: 120,
                    child: MyBagProductCard(),
                  );
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.arrow_circle_right,
                      color: Colors.black,
                      size: 40,
                    ),
                    hintText: 'Enter your promo code',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total amount',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  '154\$',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (e) => CheckOut()));
              },
              child: LargeBottons(bottonName: 'CHECK OUT'),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

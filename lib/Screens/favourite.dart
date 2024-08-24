import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/categories.dart';
import 'package:online_shoping_app/Screens/check_out.dart';
import 'package:online_shoping_app/Screens/main_screen.dart';
import 'package:online_shoping_app/Screens/my_bag.dart';
import 'package:online_shoping_app/Screens/my_profile.dart';
import 'package:online_shoping_app/Screens/visual_search_screen.dart';
import 'package:online_shoping_app/Wigets/Large_bottons.dart';
import 'package:online_shoping_app/Wigets/my_bag_product_card.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
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
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyBag()));
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black54,
                size: width * 0.1,
              ),
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.black54,
              size: width * 0.1,
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
              'Favourite',
              style: TextStyle(fontSize: 40),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, Index) {
                  return SizedBox(
                    height: 120,
                    child: MyBagProductCard(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

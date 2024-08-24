import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/main_screen.dart';
import 'package:online_shoping_app/Screens/short_drees.dart';
import 'package:online_shoping_app/Wigets/Large_bottons.dart';
import 'package:online_shoping_app/Wigets/all_categories_widget.dart';
import 'package:online_shoping_app/Screens/catalog_two.dart';
import 'package:online_shoping_app/Screens/categories.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainScreen()));
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
            Icon(
              Icons.favorite_border,
              color: Colors.black54,
              size: width * 0.1,
            ),
            Icon(
              Icons.person,
              color: Colors.black54,
              size: width * 0.1,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Categories'),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Categories()));
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LargeBottons(bottonName: 'VIEW ALL ITEMS'),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                'Choose category',
                style: TextStyle(fontSize: width * 0.05, color: Colors.black54),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CatalogTwo()));
                },
                child: AllCategoriesWidget(title: 'Tops'),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (e) => ShortDrees()));
                },
                child: AllCategoriesWidget(title: 'Shorts'),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              AllCategoriesWidget(title: 'Cardigans & Sweaters'),
              SizedBox(
                height: height * 0.03,
              ),
              AllCategoriesWidget(title: 'Knitwear'),
              SizedBox(
                height: height * 0.03,
              ),
              AllCategoriesWidget(title: 'Blazers'),
              SizedBox(
                height: height * 0.03,
              ),
              AllCategoriesWidget(title: 'Outerwear'),
              SizedBox(
                height: height * 0.03,
              ),
              AllCategoriesWidget(title: 'Pants'),
              SizedBox(
                height: height * 0.03,
              ),
              AllCategoriesWidget(title: 'Jeans'),
              SizedBox(
                height: height * 0.03,
              ),
              AllCategoriesWidget(title: 'Shirts & Blouses'),
              SizedBox(
                height: height * 0.03,
              ),
              AllCategoriesWidget(title: 'Skirts'),
              SizedBox(
                height: height * 0.03,
              ),
              AllCategoriesWidget(title: 'Dresses'),
            ],
          ),
        ),
      ),
    );
  }
}

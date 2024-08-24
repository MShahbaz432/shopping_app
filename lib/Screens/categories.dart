import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/favourite.dart';
import 'package:online_shoping_app/Screens/my_bag.dart';
import 'package:online_shoping_app/Screens/my_profile.dart';
import 'package:online_shoping_app/Wigets/categoris_items.dart';
import 'package:online_shoping_app/Screens/all_categories.dart';
import 'package:online_shoping_app/Screens/main_screen.dart';
import 'package:online_shoping_app/Screens/visual_search_screen.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainScreen()));
                    },
                    child: Icon(
                      Icons.home,
                      color: Colors.black54,
                      size: width * 0.1,
                    ),
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black54,
                    size: width * 0.1,
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
                      color: Colors.black54,
                      size: width * 0.1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (e) => Favourite()));
                    },
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.black54,
                      size: width * 0.1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (e) => MyProfile()));
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
              centerTitle: true,
              title: Text('Categories'),
              leading: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainScreen()));
                },
                child: Icon(Icons.arrow_back_ios),
              ),
              bottom: TabBar(
                  unselectedLabelColor: Colors.black,
                  unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
                  labelColor: Colors.red,
                  indicatorColor: Colors.red,
                  tabs: [
                    Tab(
                      text: 'Women',
                    ),
                    Tab(
                      text: 'Men',
                    ),
                    Tab(
                      text: 'Kids',
                    ),
                  ]),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VisualSearchScreen()));
                    },
                    child: Icon(Icons.search),
                  ),
                )
              ],
            ),
            body: TabBarView(children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                    child: Container(
                      height: height * 0.13,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'SUMMER SALES\n   Up to 50% off',
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.05),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        CategorisItems(
                            imagepath: 'assets/visual_pics/main_one.jpeg',
                            title: 'New'),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        CategorisItems(
                            imagepath:
                                'assets/visual_pics/Jeans_shirt_poses.jpeg',
                            title: 'Clothes'),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        CategorisItems(
                            imagepath: 'assets/visual_pics/women_shoes.jpg',
                            title: 'Shoes'),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        CategorisItems(
                            imagepath: 'assets/visual_pics/Accesories.jpeg',
                            title: 'Accesories'),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.05),
                          child: Container(
                            height: height * 0.08,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AllCategories()));
                              },
                              child: Center(
                                child: Text(
                                  'Choose category',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.05),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                    child: Container(
                      height: height * 0.13,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'SUMMER SALES\n   Up to 50% off',
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.05),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        CategorisItems(
                            imagepath: 'assets/mens/new.jpeg', title: 'New'),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        CategorisItems(
                            imagepath: 'assets/mens/clothes.jpeg',
                            title: 'Clothes'),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        CategorisItems(
                            imagepath: 'assets/mens/Men_Shoes.jpeg',
                            title: 'Shoes'),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        CategorisItems(
                            imagepath: 'assets/mens/watch.jpg',
                            title: 'Accesories'),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.05),
                          child: Container(
                            height: height * 0.08,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AllCategories()));
                              },
                              child: Center(
                                child: Text(
                                  'Choose category ',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.05),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                    child: Container(
                      height: height * 0.13,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'SUMMER SALES\n   Up to 50% off',
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.05),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        CategorisItems(
                            imagepath: 'assets/kids/toy.jpg', title: 'New'),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        CategorisItems(
                            imagepath: 'assets/kids/clothes.jpg',
                            title: 'Clothes'),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        CategorisItems(
                            imagepath: 'assets/kids/kid_shoes.jpg',
                            title: 'Shoes'),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        CategorisItems(
                            imagepath: 'assets/kids/kid_ring.jpg',
                            title: 'Accesories'),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.05),
                          child: Container(
                            height: height * 0.08,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AllCategories()));
                              },
                              child: Center(
                                child: Text(
                                  'Choose category',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.05),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ])
            // ,
            ));
  }
}

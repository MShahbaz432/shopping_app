import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/categories.dart';
import 'package:online_shoping_app/Screens/filters.dart';
import 'package:online_shoping_app/Screens/main_screen.dart';
import 'package:online_shoping_app/Screens/rating_review.dart';
import 'package:online_shoping_app/Wigets/Large_bottons.dart';
import 'package:online_shoping_app/Wigets/main_sale.dart';
import 'package:online_shoping_app/Wigets/womens_tops_widget.dart';
import 'package:online_shoping_app/Screens/all_categories.dart';
import 'package:online_shoping_app/Screens/visual_search_screen.dart';

class CatalogTwo extends StatefulWidget {
  const CatalogTwo({super.key});

  @override
  State<CatalogTwo> createState() => _CatalogTwoState();
}

class _CatalogTwoState extends State<CatalogTwo> {
  final List<String> titles = [
    'T-shirts',
    'Blouses',
    'Sweaters',
    'Hoodies',
    'Jackets',
    'Coats',
    'Tanks',
    'Shirts',
    'Polos',
    'Vests',
  ];
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
                      context, MaterialPageRoute(builder: (e) => MainScreen()));
                },
                child: Icon(
                  Icons.home,
                  color: Colors.black54,
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
          )),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AllCategories()));
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Women\'s Top\'s'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VisualSearchScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.05, vertical: height * 0.03),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.04,
                child: Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: titles.length,
                      itemBuilder: (context, index) {
                        return WomensTopsWidget(title: titles[index]);
                      }),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.03,
                width: width,
                color: Colors.black.withOpacity(0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (e) => Filters()));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.filter_list),
                          Text('Filter'),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.swap_vert),
                        Text('Price: lowest to high')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.view_module),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainSale(
                      descont: 'New',
                      imagepath: 'assets/visual_pics/t_shirt.jpeg',
                      price: '34\$',
                      containerColor: Colors.black,
                      subtitle: 'coton',
                      title: 'T_Shirt'),
                  MainSale(
                      descont: '-12%',
                      imagepath: 'assets/visual_pics/t_shirt.jpeg',
                      price: '34\$',
                      subtitle: 'coton',
                      title: 'T_Shirt'),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainSale(
                      descont: '-12%',
                      imagepath: 'assets/visual_pics/t_shirt.jpeg',
                      price: '34\$',
                      subtitle: 'coton',
                      title: 'T_Shirt'),
                  MainSale(
                      descont: 'New',
                      imagepath: 'assets/visual_pics/t_shirt.jpeg',
                      price: '34\$',
                      containerColor: Colors.black,
                      subtitle: 'coton',
                      title: 'T_Shirt'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            color: Colors.white,
                          ),
                          height: double.maxFinite,
                          width: double.maxFinite,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Text('Short By')),
                                Text('Popular'),
                                Text('Newest'),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (e) => RatingReview()));
                                  },
                                  child: Text('Customer review'),
                                ),
                                Text('Price: lowest to high'),
                                Text('Price: highest to low'),
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: LargeBottons(bottonName: 'sheeet'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

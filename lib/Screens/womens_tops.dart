import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/categories.dart';
import 'package:online_shoping_app/Screens/filters.dart';
import 'package:online_shoping_app/Screens/main_screen.dart';
import 'package:online_shoping_app/Wigets/women_top_item_container.dart';
import 'package:online_shoping_app/Wigets/womens_tops_widget.dart';

class WomensTops extends StatefulWidget {
  const WomensTops({super.key});

  @override
  State<WomensTops> createState() => _WomensTopsState();
}

class _WomensTopsState extends State<WomensTops> {
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
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.03, vertical: height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                'Women\'s Top\'s',
                style: TextStyle(
                    fontSize: width * 0.07, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.04,
                child: Expanded(
                  child: ListView.builder(
                    itemCount: titles.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return WomensTopsWidget(title: titles[index]);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.04,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  // borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            print('object');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Filters()));
                          },
                          child: Icon(Icons.filter_list),
                        ),
                        Text('Filters'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.swap_vert),
                        Text('Price: lowest to high'),
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.04),
                child: Column(
                  children: [
                    WomenTopItemContainer(
                      price: '51\$',
                      subtitle: 'Mango',
                      title: 'Pullover',
                      imagepath: 'assets/visual_pics/Pullover.jpeg',
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    WomenTopItemContainer(
                      price: '51\$',
                      subtitle: 'Mango',
                      title: 'Pullover',
                      imagepath: 'assets/visual_pics/Pullover.jpeg',
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    WomenTopItemContainer(
                      price: '51\$',
                      subtitle: 'Mango',
                      title: 'Pullover',
                      imagepath: 'assets/visual_pics/Pullover.jpeg',
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    WomenTopItemContainer(
                      price: '51\$',
                      subtitle: 'Mango',
                      title: 'Pullover',
                      imagepath: 'assets/visual_pics/Pullover.jpeg',
                    ),
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

import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/categories.dart';
import 'package:online_shoping_app/Screens/main_screen.dart';

class StreetClothes extends StatelessWidget {
  const StreetClothes({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MainScreen()));
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: height * 0.44,
                child: Image(
                  image: AssetImage('assets/visual_pics/hania.jpeg'),
                  width: width,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: width * 0.05,
                bottom: height * 0.03,
                child: Text(
                  'New collection',
                  style: TextStyle(
                      fontSize: width * 0.08,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: height * 0.22,
                      width: width * 0.5,
                      color: Colors.amber,
                      child: Image(
                        image: AssetImage('assets/visual_pics/w_job.jpeg'),
                        width: width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: width * 0.05,
                      bottom: height * 0.03,
                      child: Text(
                        'Summer\nsale',
                        style: TextStyle(
                            fontSize: width * 0.06,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: height * 0.22,
                      width: width * 0.5,
                      color: Colors.black,
                      child: Image(
                        image: AssetImage(
                            'assets/visual_pics/Jeans_shirt_poses.jpeg'),
                        width: width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: width * 0.05,
                      bottom: height * 0.03,
                      child: Text(
                        'Jeans\nshirt\nposes',
                        style: TextStyle(
                            fontSize: width * 0.05,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Stack(children: [
                  Container(
                    height: height * 0.22,
                    width: width * 0.5,
                    color: Colors.green,
                    child: Image(
                      image: AssetImage('assets/visual_pics/black.jpeg'),
                      width: width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: width * 0.02,
                    bottom: height * 0.01,
                    child: Text(
                      'Black',
                      style: TextStyle(
                          fontSize: width * 0.08,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
                Stack(children: [
                  Container(
                    height: height * 0.22,
                    width: width * 0.5,
                    color: Colors.yellow,
                    child: Image(
                      image: AssetImage('assets/visual_pics/hoodies.jpeg'),
                      width: width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: width * 0.05,
                    bottom: height * 0.03,
                    child: Text(
                      'Men’s\nHoodies',
                      style: TextStyle(
                          fontSize: width * 0.06,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/finding_image_items.dart';
import 'package:online_shoping_app/Screens/visual_search_screen.dart';

class CropItem extends StatefulWidget {
  const CropItem({super.key});

  @override
  State<CropItem> createState() => _CropItemState();
}

class _CropItemState extends State<CropItem> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Visual search'),
        leading: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => VisualSearchScreen()));
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: height,
            child: Image(
              image: AssetImage('assets/visual_pics/visual_two.jpeg'),
              fit: BoxFit.cover,
              width: width,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: height * 0.1,
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          FindingImageItems()));
                            },
                            icon: Icon(
                              Icons.search_rounded,
                              color: Colors.red,
                              size: height * 0.05,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:online_shoping_app/Wigets/Large_bottons.dart';
import 'package:online_shoping_app/Screens/categories.dart';
import 'package:online_shoping_app/Screens/crop_item.dart';
import 'package:online_shoping_app/Screens/taking_photo.dart';

class VisualSearchScreen extends StatefulWidget {
  const VisualSearchScreen({super.key});

  @override
  State<VisualSearchScreen> createState() => _VisualSearchScreenState();
}

class _VisualSearchScreenState extends State<VisualSearchScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Visual search'),
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Categories()));
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: height * double.maxFinite,
            child: Image(
              image: AssetImage('assets/visual_pics/visual_one.jpeg'),
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            height: height * double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Search for an outfit by taking a photo or uploading an image',
                  style: TextStyle(color: Colors.white, fontSize: width * 0.05),
                ),
                SizedBox(height: height * 0.03),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TakingPhoto()));
                  },
                  child: LargeBottons(bottonName: 'TAKE A PHOTO'),
                ),
                SizedBox(height: height * 0.03),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CropItem()));
                  },
                  child: LargeBottons(
                    backgroundcolor: Colors.transparent,
                    borderwithd: 1.5,
                    bottonName: 'UPLOAD A PHOTO',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

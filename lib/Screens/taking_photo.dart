import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/visual_search_screen.dart';

class TakingPhoto extends StatefulWidget {
  const TakingPhoto({super.key});

  @override
  State<TakingPhoto> createState() => _TakingPhotoState();
}

class _TakingPhotoState extends State<TakingPhoto> {
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
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: double.maxFinite,
              child: Image(
                image: AssetImage('assets/visual_pics/visual_two.jpeg'),
                fit: BoxFit.cover,
                width: width,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: height * 0.15,
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.flash_on),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt_rounded,
                              color: Colors.red,
                              size: height * 0.05,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.flip_camera_ios),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

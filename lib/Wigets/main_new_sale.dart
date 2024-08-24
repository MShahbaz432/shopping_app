import 'package:flutter/material.dart';
import 'package:online_shoping_app/Wigets/favourite_botton.dart';

class MainNewSale extends StatelessWidget {
  final String? imagepath;
  final String? title;
  final String? subtitle;
  final String? price;

  const MainNewSale(
      {super.key,
      required this.imagepath,
      required this.price,
      required this.subtitle,
      required this.title});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.33,
      width: width * 0.4,
      color: Colors.black12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * 0.22,
            width: width * 0.4,
            color: Colors.white,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image(
                  image: AssetImage(imagepath!),
                  width: width,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: Container(
                    height: height * 0.03,
                    width: width * 0.09,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        'New',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 5,
                  bottom: -15,
                  child: FavouriteBotton(),
                ),
              ],
            ),
          ),
          Text(
            subtitle!,
            style: TextStyle(color: Colors.black54),
          ),
          Text(
            title!,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Text(
                price!.toString(),
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class WomenTopItemContainer extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? price;
  final String? imagepath;

  const WomenTopItemContainer(
      {super.key,
      required this.price,
      required this.subtitle,
      required this.imagepath,
      required this.title});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: height * 0.18,
          width: width,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                height: height * 0.18,
                width: width * 0.35,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
                child: Image(
                  image: AssetImage(imagepath!),
                  width: width,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.02, vertical: height * 0.005),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title!,
                          style: TextStyle(fontSize: width * 0.05),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          subtitle!,
                          style: TextStyle(
                              fontSize: width * 0.04, color: Colors.black45),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_rate_rounded,
                          size: width * 0.05,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star_rate_rounded,
                          size: width * 0.05,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star_rate_rounded,
                          size: width * 0.05,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star_rate_rounded,
                          size: width * 0.05,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star_rate_rounded,
                          size: width * 0.05,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          price!,
                          style: TextStyle(fontSize: width * 0.05),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: width * 0.04,
          bottom: height * -0.02,
          child: CircleAvatar(
            child: Icon(
              Icons.favorite_border,
              color: Colors.black26,
            ),
          ),
        ),
      ],
    );
  }
}

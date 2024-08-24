import 'package:flutter/material.dart';
import 'package:online_shoping_app/Wigets/favourite_botton.dart';

class MainSale extends StatelessWidget {
  final String? imagepath;
  final String? descont;
  final String? title;
  final String? subtitle;
  final String? price;
  final Color? containerColor;
  final String? newItem;

  const MainSale({
    super.key,
    required this.descont,
    required this.imagepath,
    required this.price,
    required this.subtitle,
    required this.title,
    this.containerColor = Colors.red,
    this.newItem,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              height: height * 0.25,
              width: width * 0.39,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                image: DecorationImage(
                  image: AssetImage(imagepath!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                height: height * 0.04,
                width: width * 0.15,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Center(
                  child: Text(
                    descont!,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -10,
              right: 12,
              child: CircleAvatar(
                child: FavouriteBotton(),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(5, (index) {
            return Icon(
              Icons.star,
              color: Colors.yellow,
              size: 20,
            );
          }),
        ),
        Text(
          subtitle!,
          style: TextStyle(color: Colors.black54),
        ),
        Text(
          title!,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        Text(
          price.toString(),
          style: TextStyle(color: Colors.red, fontSize: 20),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/crop_item.dart';

class FindingImageItems extends StatefulWidget {
  const FindingImageItems({super.key});

  @override
  State<FindingImageItems> createState() => _FindingImageItemsState();
}

class _FindingImageItemsState extends State<FindingImageItems> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CropItem()));
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.07),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              color: Colors.red,
              size: height * 0.1,
            ),
            Text(
              'Finding similar results...',
              style: TextStyle(fontSize: width * 0.09),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

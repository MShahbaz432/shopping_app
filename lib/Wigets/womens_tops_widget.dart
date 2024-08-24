import 'package:flutter/material.dart';

class WomensTopsWidget extends StatelessWidget {
  final String? title;
  const WomensTopsWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: height * 0.04,
        width: width * 0.25,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            title!,
            style: TextStyle(color: Colors.white, fontSize: width * 0.04),
          ),
        ),
      ),
    );
  }
}

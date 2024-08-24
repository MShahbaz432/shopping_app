import 'package:flutter/material.dart';

class AllCategoriesWidget extends StatelessWidget {
  final String? title;
  const AllCategoriesWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Text(
      title!,
      style: TextStyle(fontSize: width * 0.04),
    );
  }
}

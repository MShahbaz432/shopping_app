import 'package:flutter/material.dart';

class LargeBottons extends StatelessWidget {
  final String? bottonName;
  final Color? backgroundcolor;
  final Color? bordercolor;
  final double? borderwithd;
  final TextStyle? textStyle;
  const LargeBottons({
    super.key,
    required this.bottonName,
    this.backgroundcolor = const Color.fromARGB(255, 255, 51, 0),
    this.bordercolor = Colors.grey,
    this.borderwithd = 0.0,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.07,
      decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: bordercolor!, width: borderwithd!)),
      child: Center(
          child: Text(
        bottonName!,
        style:
            textStyle ?? TextStyle(color: Colors.white, fontSize: width * 0.05),
      )),
    );
  }
}

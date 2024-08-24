import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColorPicker extends StatefulWidget {
  ColorPicker({super.key});

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  final List<Color> colors = [
    Colors.black,
    Colors.orange,
    Colors.grey,
    Colors.pink,
    Colors.green,
    Colors.red,
  ];
  int selectindex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: colors.map((color) {
        int index = colors.indexOf(color);
        return GestureDetector(
          onTap: () {
            setState(() {
              selectindex = index;
            });
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: selectindex == index ? Colors.red : Colors.transparent,
                width: 1,
              ),
            ),
            alignment: Alignment.center,
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

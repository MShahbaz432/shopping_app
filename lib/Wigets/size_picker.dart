import 'package:flutter/material.dart';

class SizePicker extends StatefulWidget {
  const SizePicker({super.key});

  @override
  State<SizePicker> createState() => _SizePickerState();
}

class _SizePickerState extends State<SizePicker> {
  final List<String> picSize = [
    'XS',
    'S',
    'M',
    'L',
    'XL',
  ];
  int selectindex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: picSize.map(
        (size) {
          int index = picSize.indexOf(size);
          return GestureDetector(
            onTap: () {
              setState(() {
                selectindex = index;
              });
            },
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: selectindex == index ? Colors.red : Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  size,
                  style: TextStyle(
                      color:
                          selectindex == index ? Colors.white : Colors.black),
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}

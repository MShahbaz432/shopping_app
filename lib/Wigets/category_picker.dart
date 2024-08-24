import 'package:flutter/material.dart';

class CategoryPicker extends StatefulWidget {
  const CategoryPicker({super.key});

  @override
  State<CategoryPicker> createState() => _CategoryPickerState();
}

final List<String> categorypicker = [
  'All',
  'Women',
  'Men',
  'Boys',
  'Girls',
];
int selecindex = 0;

class _CategoryPickerState extends State<CategoryPicker> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 18,
      runSpacing: 8,
      children: categorypicker.map((category) {
        int index = categorypicker.indexOf(category);
        return GestureDetector(
          onTap: () {
            setState(() {
              selecindex = index;
            });
          },
          child: Container(
            height: 40,
            width: 99,
            decoration: BoxDecoration(
              color: selecindex == index ? Colors.red : Colors.white,
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                category,
                style: TextStyle(
                  color: selecindex == index ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

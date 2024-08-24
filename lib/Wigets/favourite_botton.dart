import 'package:flutter/material.dart';
import 'package:online_shoping_app/Wigets/Large_bottons.dart';

class FavouriteBotton extends StatefulWidget {
  const FavouriteBotton({super.key});

  @override
  State<FavouriteBotton> createState() => _FavouriteBottonState();
}

final List<String> sizepicker = [
  'XS',
  'S',
  'M',
  'L',
  'XL',
];
int selecindex = 0;

class _FavouriteBottonState extends State<FavouriteBotton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (e) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                height: double.maxFinite,
                width: double.maxFinite,
                child: Column(
                  children: [
                    Text(
                      'Select Size',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      spacing: 18,
                      runSpacing: 8,
                      children: sizepicker.map((category) {
                        sizepicker.indexOf(category);
                        return Container(
                          height: 40,
                          width: 99,
                          decoration: BoxDecoration(
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
                                color: Colors.black,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Size info',
                          style: TextStyle(fontSize: 18),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                    Spacer(),
                    LargeBottons(bottonName: 'ADD TO FAVORITES')
                  ],
                ),
              );
            });
      },
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.favorite_border,
          color: Colors.black54,
        ),
      ),
    );
  }
}

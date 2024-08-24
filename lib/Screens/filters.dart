import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/Brand.dart';
import 'package:online_shoping_app/Screens/catalog_two.dart';
import 'package:online_shoping_app/Wigets/Large_bottons.dart';
import 'package:online_shoping_app/Wigets/category_picker.dart';
import 'package:online_shoping_app/Wigets/size_picker.dart';
import 'package:online_shoping_app/Wigets/color_picker.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  var rangevlue = RangeValues(40, 60);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (e) => CatalogTwo()));
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Filters'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Price range'),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Center(
              child: RangeSlider(
                  max: 100,
                  divisions: 5,
                  values: rangevlue,
                  labels: RangeLabels(rangevlue.start.round().toString(),
                      rangevlue.end.round().toString()),
                  activeColor: Colors.pink,
                  onChanged: (vlue) {
                    setState(() {
                      rangevlue = vlue;
                    });
                  }),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Colors'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            color: Colors.white,
            child: Center(
              child: ColorPicker(),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Sizes'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            color: Colors.white,
            child: Center(
              child: SizePicker(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Category'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 120,
            color: Colors.white,
            child: Center(child: CategoryPicker()),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (e) => Brand()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Brand'),
                      Text(
                        'adidas Originals, Jack & Jones, s.Oliver',
                        style: TextStyle(color: Colors.black38),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: Colors.white,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 150,
                  child: LargeBottons(
                    bottonName: 'Discard',
                    backgroundcolor: Colors.transparent,
                    borderwithd: 1,
                    textStyle: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: LargeBottons(bottonName: 'Apply'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

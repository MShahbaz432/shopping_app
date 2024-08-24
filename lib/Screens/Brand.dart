import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/filters.dart';
import 'package:online_shoping_app/Wigets/Large_bottons.dart';

class Brand extends StatefulWidget {
  const Brand({super.key});

  @override
  State<Brand> createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  final List<String> brandList = [
    'adidas Originals',
    ' Blend',
    ' Boutique Moschino',
    ' Champion',
    ' Diesel',
    ' Jack & Jones',
    ' Naf Naf',
    'Red Valentino',
    's.Oliver',
  ];
  int selectindex = 0;
  List<bool> selectedcheckbox = [];
  void initState() {
    super.initState();
    // Initialize the list to have a false value for each item in brandList
    selectedcheckbox = List<bool>.filled(brandList.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brand'),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (e) => Filters()));
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Search',
                  hintStyle: TextStyle(fontSize: 20, color: Colors.black38),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black38,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                itemCount: brandList.length,
                itemBuilder: (content, index) {
                  return SizedBox(
                    height: 50,
                    child: ListTile(
                      title: Text(brandList[index]),
                      trailing: Checkbox(
                          activeColor: Colors.red,
                          value: selectedcheckbox[index],
                          onChanged: (bool? brand) {
                            setState(() {
                              selectedcheckbox[index] = brand!;
                            });
                          }),
                    ),
                  );
                }),
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

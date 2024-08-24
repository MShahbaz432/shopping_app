import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/all_categories.dart';
import 'package:online_shoping_app/Wigets/Large_bottons.dart';
import 'package:online_shoping_app/Wigets/main_new_sale.dart';
import 'package:online_shoping_app/Wigets/main_sale.dart';

class ShortDrees extends StatefulWidget {
  const ShortDrees({super.key});

  @override
  State<ShortDrees> createState() => _ShortDreesState();
}

final List<String> sizepicker = [
  'XS',
  'S',
  'M',
  'L',
  'XL',
];
int selecindex = 0;

class _ShortDreesState extends State<ShortDrees> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Short Dress'),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (e) => AllCategories()));
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          Icon(Icons.share),
          Padding(padding: EdgeInsets.only(left: 10))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 370,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 370,
                      width: 250,
                      color: Colors.red,
                      child: Image(
                        image: AssetImage(
                            'assets/visual_pics/short_dress_one.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 370,
                      width: 250,
                      color: Colors.red,
                      child: Image(
                        image: AssetImage(
                            'assets/visual_pics/short_dress_one.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 370,
                      width: 250,
                      color: Colors.red,
                      child: Image(
                        image: AssetImage(
                            'assets/visual_pics/short_dress_one.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 370,
                      width: 250,
                      color: Colors.red,
                      child: Image(
                        image: AssetImage(
                            'assets/visual_pics/short_dress_one.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 370,
                      width: 250,
                      color: Colors.red,
                      child: Image(
                        image: AssetImage(
                            'assets/visual_pics/short_dress_one.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 370,
                      width: 250,
                      color: Colors.red,
                      child: Image(
                        image: AssetImage(
                            'assets/visual_pics/short_dress_one.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 370,
                      width: 250,
                      color: Colors.red,
                      child: Image(
                        image: AssetImage(
                            'assets/visual_pics/short_dress_one.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: double.maxFinite,
                              width: double.maxFinite,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                              ),
                            );
                          });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'size',
                            style: TextStyle(fontSize: 17),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Black',
                          style: TextStyle(fontSize: 17),
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'H&M',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  Text(
                    '\$19.99',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text('Short black dress'),
              SizedBox(
                height: 15,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Icon(
                        Icons.star,
                        size: 22,
                        color: Colors.yellow,
                      );
                    }),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                  'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.'),
              SizedBox(
                height: 30,
              ),
              LargeBottons(bottonName: 'ADD TO CART'),
              SizedBox(
                height: 60,
                child: Divider(),
              ),
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping info',
                      style: TextStyle(fontSize: 20),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                child: Divider(),
              ),
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Support',
                      style: TextStyle(fontSize: 20),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                child: Divider(),
              ),
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'You can also like this',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '12 items',
                      style: TextStyle(fontSize: 12, color: Colors.black38),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: height * 0.33,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    MainSale(
                        descont: '-12%',
                        imagepath: 'assets/visual_pics/t_shirt.jpeg',
                        price: '34\$',
                        subtitle: 'coton',
                        title: 'T_Shirt'),
                    SizedBox(
                      width: 8,
                    ),
                    MainNewSale(
                        imagepath: 'assets/visual_pics/Pullover.jpeg',
                        price: '25\$',
                        subtitle: 'women',
                        title: 'Pullover'),
                    SizedBox(
                      width: 8,
                    ),
                    MainSale(
                        descont: '-12%',
                        imagepath: 'assets/visual_pics/t_shirt.jpeg',
                        price: '34\$',
                        subtitle: 'coton',
                        title: 'T_Shirt'),
                    SizedBox(
                      width: 8,
                    ),
                    MainNewSale(
                        imagepath: 'assets/visual_pics/Pullover.jpeg',
                        price: '25\$',
                        subtitle: 'women',
                        title: 'Pullover')
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:online_shoping_app/Wigets/main_new_sale.dart';
import 'package:online_shoping_app/Wigets/main_sale.dart';
import 'package:online_shoping_app/Wigets/womens_tops_widget.dart';

class CatalogShortBy extends StatelessWidget {
  const CatalogShortBy({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      'T-shirts',
      'Blouses',
      'Sweaters',
      'Hoodies',
      'Jackets',
      'Coats',
      'Tanks',
      'Shirts',
      'Polos',
      'Vests',
    ];
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Women\'s Top\'s'),
        actions: [
          Icon(Icons.search),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.05, vertical: height * 0.03),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.04,
                child: Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: titles.length,
                      itemBuilder: (context, index) {
                        return WomensTopsWidget(title: titles[index]);
                      }),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.03,
                width: width,
                color: Colors.black.withOpacity(0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.filter_list),
                        Text('Filter'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.swap_vert),
                        Text('Price: lowest to high')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.view_module),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainSale(
                      descont: '-12%',
                      imagepath: 'assets/visual_pics/t_shirt.jpeg',
                      price: '34\$',
                      subtitle: 'coton',
                      title: 'T_Shirt'),
                  MainNewSale(
                      imagepath: 'assets/visual_pics/Pullover.jpeg',
                      price: '25\$',
                      subtitle: 'women',
                      title: 'Pullover'),
                ],
              ),
              SizedBox(height: height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainSale(
                      descont: '-12%',
                      imagepath: 'assets/visual_pics/t_shirt.jpeg',
                      price: '34\$',
                      subtitle: 'coton',
                      title: 'T_Shirt'),
                  MainNewSale(
                      imagepath: 'assets/visual_pics/Pullover.jpeg',
                      price: '25\$',
                      subtitle: 'women',
                      title: 'Pullover'),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Bottom Sheet'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

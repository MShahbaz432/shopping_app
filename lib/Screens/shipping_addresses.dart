import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/my_profile.dart';

class ShippingAddresses extends StatefulWidget {
  const ShippingAddresses({super.key});

  @override
  State<ShippingAddresses> createState() => _ShippingAddressesState();
}

class _ShippingAddressesState extends State<ShippingAddresses> {
  @override
  var checkbox = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (e) => MyProfile(),
              ),
            );
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Shipping Addresses'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: 140,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Jane Doe'),
                      Text(
                        'Edit',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  Text('''3 Newbridge Court 
        Chino Hills, CA 91709, United States'''),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                          value: checkbox,
                          onChanged: (bool? value) {
                            setState(() {
                              checkbox = value!;
                            });
                          }),
                      Text('Use as the shipping address')
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: 140,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Jane Doe'),
                      Text(
                        'Edit',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  Text('''3 Newbridge Court 
        Chino Hills, CA 91709, United States'''),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                          value: checkbox,
                          onChanged: (bool? value) {
                            setState(() {
                              checkbox = value!;
                            });
                          }),
                      Text('Use as the shipping address')
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: 140,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Jane Doe'),
                      Text(
                        'Edit',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  Text('''3 Newbridge Court 
        Chino Hills, CA 91709, United States'''),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                          value: checkbox,
                          onChanged: (bool? value) {
                            setState(() {
                              checkbox = value!;
                            });
                          }),
                      Text('Use as the shipping address')
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

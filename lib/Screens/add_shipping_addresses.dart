import 'package:flutter/material.dart';
import 'package:online_shoping_app/Wigets/Large_bottons.dart';

class AddShippingAddresses extends StatefulWidget {
  const AddShippingAddresses({super.key});

  @override
  State<AddShippingAddresses> createState() => _AddShippingAddressesState();
}

class _AddShippingAddressesState extends State<AddShippingAddresses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('Add Shipping Addresses'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextFormField(
              maxLines: 2,
              decoration: InputDecoration(
                hintText: 'Full name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            TextFormField(
              maxLines: 2,
              decoration: InputDecoration(
                hintText: 'Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            TextFormField(
              maxLines: 2,
              decoration: InputDecoration(
                hintText: 'City',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            TextFormField(
              maxLines: 2,
              decoration: InputDecoration(
                hintText: 'State/Province/Region',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            TextFormField(
              maxLines: 2,
              decoration: InputDecoration(
                hintText: 'Zip Code (Postal Code)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            TextFormField(
              maxLines: 2,
              decoration: InputDecoration(
                hintText: 'Country',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            LargeBottons(bottonName: 'Save Address')
          ],
        ),
      ),
    );
  }
}

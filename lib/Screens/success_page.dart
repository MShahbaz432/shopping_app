import 'package:flutter/material.dart';
import 'package:online_shoping_app/Wigets/Large_bottons.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/main_pics/sccess.jpg'),
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Success!',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                ),
                Text(
                    'Your order will be delivered soon.\nThank you for choosing our app!'),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: LargeBottons(
                    bottonName: 'Continue shopping',
                    bordercolor: Colors.transparent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

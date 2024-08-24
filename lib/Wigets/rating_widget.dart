import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 120,
            // color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      '4.3',
                      style: TextStyle(fontSize: 60),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '23 ratting',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 120,
            // color: Colors.blue,
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber[700],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber[700],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber[700],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber[700],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber[700],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 90,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '12',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Icon(
                        Icons.star,
                        color: Colors.amber[700],
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber[700],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber[700],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber[700],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 75,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '12',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 48),
                      child: Icon(
                        Icons.star,
                        color: Colors.amber[700],
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber[700],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber[700],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 60,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '12',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 72),
                      child: Icon(
                        Icons.star,
                        color: Colors.amber[700],
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber[700],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 35,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '12',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 95),
                      child: Icon(
                        Icons.star,
                        color: Colors.amber[700],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 15,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '12',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

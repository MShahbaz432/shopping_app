import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/rating_review.dart';
import 'package:online_shoping_app/Wigets/Large_bottons.dart';
import 'package:online_shoping_app/Wigets/rating_widget.dart';

class WriteReview extends StatefulWidget {
  const WriteReview({super.key});

  @override
  State<WriteReview> createState() => _WriteReviewState();
}

class _WriteReviewState extends State<WriteReview> {
  @override
  Widget build(BuildContext context) {
    var checkboxTest = true;

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (e) => RatingReview()));
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Rating and Review'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rating&Reviews',
                style: TextStyle(fontSize: 30),
              ),
              RatingWidget(),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text('8 reviews'),
                  Spacer(),
                  Checkbox(
                      value: checkboxTest,
                      onChanged: (value) {
                        setState(() {
                          checkboxTest = value!;
                        });
                      }),
                  Text('with photo'),
                ],
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    height: 300,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Helene Moore',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber[700],
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber[700],
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber[700],
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber[700],
                              size: 15,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.amber[700],
                              size: 15,
                            ),
                            Spacer(),
                            Text('5 jun , 2029')
                          ],
                        ),
                        Text(
                            'The dress is great! Very classy and comfortable. It fit perfectly! I\'m 5\'7" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn\'t recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Helpful',
                              style: TextStyle(color: Colors.black54),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.thumb_up,
                              color: Colors.black38,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -5,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/visual_pics/hania.jpeg'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      constraints: BoxConstraints(maxHeight: 550),
                      context: context,
                      builder: (e) {
                        return Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Column(
                              children: [
                                Text(
                                  'What is you rate?',
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star_border,
                                      size: 40,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      size: 40,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      size: 40,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      size: 40,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      size: 40,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                    'Please share your opinion\n      about the product'),
                                SizedBox(
                                  height: 15,
                                ),
                                TextField(
                                  maxLines: 8,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      fillColor: Colors.white,
                                      hintText: 'Your review',
                                      filled: true),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      color: Colors.white60,
                                      child: Center(
                                        child: CircleAvatar(
                                          backgroundColor: Colors.red,
                                          radius: 35,
                                          child: Icon(
                                            Icons.camera_alt,
                                            color: Colors.white,
                                            size: 35,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                LargeBottons(bottonName: 'SEND REVIEW')
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: LargeBottons(
                  bottonName: 'Write a review',
                  bordercolor: Colors.transparent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:online_shoping_app/Screens/main_screen.dart';
import 'package:online_shoping_app/Wigets/Large_bottons.dart';
import 'package:online_shoping_app/Screens/login_screen.dart';
import 'package:online_shoping_app/Wigets/signup_textformfeild.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xfff9f9f9),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign up',
                  style: TextStyle(fontSize: width * 0.1),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        SignupTextformfeild(
                          hintText: 'Name',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        SignupTextformfeild(
                          hintText: 'Email',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter the Email';
                            } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                .hasMatch(value)) {
                              return 'please enter valide email';
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        SignupTextformfeild(
                          hintText: 'password',
                        )
                      ],
                    )),
                SizedBox(
                  height: height * 0.005,
                ),
                // replace with text span
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (e) => LoginScreen()));
                      },
                      child: Icon(
                        Icons.forward,
                        size: width * 0.05,
                        color: Colors.deepOrange,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                InkWell(
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (e) => MainScreen()));
                    } else {
                      print('Please Enter the Data');
                    }
                  },
                  child: LargeBottons(bottonName: 'Sign Up'),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign up with social account? ',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/icons/facebook.png'),
                      // width: width * 0.1,
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Image(
                      image: AssetImage('assets/icons/google.png'),
                      // width: width * 0.1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

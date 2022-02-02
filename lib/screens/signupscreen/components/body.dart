import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:togoapp/constants.dart';
import 'package:togoapp/screens/homescreen/components/body.dart';
import 'package:togoapp/screens/signupscreen/signup_screen.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              // flex: 3,
              child: SplashContent(
                image: "assets/images/image4.png",
              ),
            ),
            Container(
              height: getProportionateScreenHeight(350),
              width: getProportionateScreenWidth(400),
              // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: kPrimaryColorThree),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    "Continue With Phone Number",
                                    style: TextStyle(
                                      color: kPrimaryColorTwo,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                ),
                                Container(
                                  child: Text(
                                    "Enter your phone number",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                ),
                                Container(
                                  height: getProportionateScreenHeight(38),
                                  width: getProportionateScreenWidth(250),
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      hintText: '+91',
                                      hintStyle: TextStyle(fontSize: 16),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        ),
                                      ),
                                      filled: true,
                                      contentPadding: EdgeInsets.all(16),
                                      fillColor: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 25.0),
                                ),
                                SizedBox(
                                  width: getProportionateScreenWidth(180.0),
                                  height: getProportionateScreenHeight(45.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      primary: kPrimaryColorTwo, // background
                                      onPrimary: Colors.white, // foreground
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SignUpscreen(),
                                        ),
                                      );
                                    },
                                    child: Text('Continue'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Image.asset(
            "assets/images/image4.png",
            height: getProportionateScreenHeight(400),
            width: getProportionateScreenWidth(235),
          ),
        ),
      ],
    );
  }
}

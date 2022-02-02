import 'package:flutter/material.dart';
import 'package:togoapp/constants.dart';
import 'package:togoapp/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.image,
    required this.text,
    required this.text2,
  }) : super(key: key);
  final String image, text, text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Center(
          child: Image.asset(
            image,
            height: getProportionateScreenHeight(235),
            width: getProportionateScreenWidth(235),
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: kPrimaryColorTwo,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            text2,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(20),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:awesome_loader/awesome_loader.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:togoapp/constants.dart';
import 'package:togoapp/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: SplashContent(
              image: 'assets/images/toplogo.png',
            ),
          ),
          Expanded(
            child: SizedBox(),
          ),
        ],
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
            "assets/images/togologo.png",
            height: getProportionateScreenHeight(400),
            width: getProportionateScreenWidth(235),
          ),
        ),
        AwesomeLoader(
          loaderType: AwesomeLoader.AwesomeLoader3,
          color: Colors.blue,
        ),
      ],
    );
  }
}

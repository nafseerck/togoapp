import 'package:awesome_loader/awesome_loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:togoapp/constants.dart';
import 'package:togoapp/screens/signupscreen/signup_screen.dart';
import 'package:togoapp/size_config.dart';
import '../components/splash_contents.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // final images = ["assets/images/image1.png","assets/images/image1.png","assets/images/image1.png"];
  // final text = ["Find Favorite Shops", "Stay Safe","Order Now"];
  // final text2 = ["Find Favorite Shops", "Stay Safe","Order Now"];
  int currentPage = 0;
  final List<Map<String, String>> splashData = [
    {
      "image": "assets/images/image1.png",
      "text": "Find Favorite Shops",
      "text2": "Get your favorite items from nearest shop buy now and enjoy"
    },
    {
      "image": "assets/images/image2.png",
      "text": "Stay Safe",
      "text2": "Stay at home and explore the products from your comfort zone",
    },
    {
      "image": "assets/images/image3.png",
      "text": "Order Now",
      "text2":
          "Now you can order food & grocery more anytime right from your mobile",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                // itemBuilder: (context,index){
                //   return SplashContent(image: images[index], text: text[index], text2: text2[index]);
                // },
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"] ?? "",
                  text: splashData[index]["text"] ?? "",
                  text2: splashData[index]["text2"] ?? "",
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: double.infinity,
                      height: getProportionateScreenHeight(56),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
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
                        child: Text('Login'),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5.0),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColorTwo : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3.0),
      ),
    );
  }
}

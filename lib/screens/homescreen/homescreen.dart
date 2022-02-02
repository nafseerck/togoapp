import 'package:flutter/material.dart';
import 'package:togoapp/screens/homescreen/components/body.dart';
import 'package:togoapp/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

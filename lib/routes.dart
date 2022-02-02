import 'dart:js';

import 'package:flutter/material.dart';
import 'package:togoapp/screens/signupscreen/signup_screen.dart';
import 'package:togoapp/screens/splash/splash_screen.dart';

//All the routes

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignUpscreen.routeName: (context) => SignUpscreen()
};

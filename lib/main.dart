import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test1/constants/style.dart';
import 'package:test1/controllers/menu_controller.dart';
import 'package:test1/controllers/navigator_controller.dart';
import 'package:test1/screen/home_screen.dart';
import 'package:test1/login_screen.dart';
import 'package:test1/screen/web_login_screen.dart';

void main() {
  Get.put(MenuController1());
  Get.put(NavigationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hai An Group',
      theme: ThemeData(
          scaffoldBackgroundColor: light,
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black),
          pageTransitionsTheme: PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          })),
      home: Web_Login_Screen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'assets/color.dart';

class TrackingScreen extends StatelessWidget {
  const TrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColor1.backgroundColor,
        appBar: AppBar(
          titleSpacing: 0,
          title: Image.asset('lib/assets/images/Appbar.png'),
          backgroundColor: MyColor1.appbarColor,
        ),
        body: SafeArea(
            child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: const Center(
                child: Text(
                  'Container Tracking',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        )));
  }
}

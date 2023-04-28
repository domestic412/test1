import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:test1/booking_screen.dart';
import 'package:test1/helper/local_navigator.dart';
import 'package:test1/screen/web_login_screen.dart';
import 'package:test1/tracking_screen.dart';
import 'package:test1/widgets/large_screen.dart';
import 'package:test1/widgets/side_menu_item.dart';
import 'package:test1/widgets/small_screen.dart';
import 'package:test1/widgets/top_nav.dart';
import '../assets/color.dart';
import '../login_screen.dart';
import '../widgets/local_navigator.dart';
import '../widgets/responsive.dart';
import '../widgets/side_menu.dart';
import '../widgets/top_bar_contents.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  // final ScrollController _scrollController = ScrollController();
  // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  // double _scrollPosition = 0;
  // double _opacity = 0;

  // _scrollListener() {
  //   setState(() {
  //     _scrollPosition = _scrollController.position.pixels;
  //   });
  // }

  // @override
  // void initState() {
  //   _scrollController.addListener(_scrollListener);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;
    // _opacity = _scrollPosition < screenSize.height * 0.40
    //     ? _scrollPosition / (screenSize.height * 0.40)
    //     : 1;
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: localNavigator(),
        ),
      ),
      // backgroundColor: MyColor1.backgroundColor,
      // AppBar(
      //     titleSpacing: 0,
      //     title: Image.asset('lib/assets/images/App  bar.png'),
      //     backgroundColor: MyColor1.appbarColor,
      //     automaticallyImplyLeading: false),
      // body: SafeArea(
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Material(
      //           elevation: 5,
      //           borderRadius: const BorderRadius.only(
      //             bottomLeft: Radius.circular(50),
      //             topRight: Radius.circular(50),
      //           ),
      //           child: Image.asset('lib/assets/images/Vessel.png'),
      //         ),
      //         Row(
      //           // ignore: prefer_const_literals_to_create_immutables
      //           children: [
      //             const Padding(padding: EdgeInsets.only(left: 15, top: 50)),
      //             const Text(
      //               "Services",
      //               style: TextStyle(
      //                   fontSize: 25,
      //                   fontWeight: FontWeight.w500,
      //                   color: MyColor1.letterColor),
      //             ),
      //           ],
      //         ),
      //         //Expanded(
      //         //child: OverflowBox(
      //         //maxWidth: MediaQuery.of(context).size.width,
      //         //child:
      //         Wrap(
      //           children: [
      //             Container(
      //               //color: Colors.red,
      //               width: 200,
      //               //    width: (MediaQuery.of(context).size.width) / 2,
      //               padding: const EdgeInsets.only(
      //                 bottom: 10,
      //               ),
      //               child: Column(
      //                 children: <Widget>[
      //                   GestureDetector(
      //                     onTap: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => const BookingScreen(
      //                                   title: 'Booking',
      //                                 )),
      //                       );
      //                     },
      //                     child: ClipRRect(
      //                       borderRadius: BorderRadius.circular(20),
      //                       child: Image.asset(
      //                         'lib/assets/images/Container1.png',
      //                         height: 130,
      //                       ),
      //                     ),
      //                   ),
      //                   Container(
      //                     padding: EdgeInsets.only(top: 5),
      //                     child: const Center(
      //                       child: Text(
      //                         'Booking',
      //                         style: TextStyle(
      //                             fontSize: 16, fontWeight: FontWeight.w500),
      //                       ),
      //                     ),
      //                   )
      //                 ],
      //               ),
      //             ),
      //             Container(
      //               //color: Colors.blueAccent,
      //               width: 200,
      //               //  width: (MediaQuery.of(context).size.width) / 2,
      //               padding: const EdgeInsets.only(
      //                 bottom: 10,
      //               ),
      //               child: Column(
      //                 children: <Widget>[
      //                   GestureDetector(
      //                     onTap: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => TrackingScreen()),
      //                       );
      //                     },
      //                     child: ClipRRect(
      //                       borderRadius: BorderRadius.circular(20),
      //                       child: Image.asset(
      //                         'lib/assets/images/Container1.png',
      //                         height: 130,
      //                       ),
      //                     ),
      //                   ),
      //                   Container(
      //                     padding: EdgeInsets.only(top: 5),
      //                     child: const Center(
      //                       child: Text(
      //                         'Container Tracking',
      //                         style: TextStyle(
      //                             fontSize: 16, fontWeight: FontWeight.w500),
      //                       ),
      //                     ),
      //                   )
      //                 ],
      //               ),
      //             )
      //           ],
      //         ),
      //         // )
      //         // ),
      //       ],
      //     ),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Web_Login_Screen()),
          );
        },
        tooltip: 'Log Out',
        child: const Icon(Icons.logout),
      ),
    );
  }
}

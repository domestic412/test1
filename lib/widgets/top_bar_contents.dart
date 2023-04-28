import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 70),
      child: Container(
        // color: Colors.white.withOpacity(widget.opacity),
        color: Color(0xFFF09227e),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   width: screenSize.width / 2,
                    // ),
                    Text(
                      'Chào mừng bạn đến với Công ty cổ phần Vận tải và Xếp dỡ Hải An',
                      style: TextStyle(
                        // color: Color(0xFFF09227e),
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w900,
                        letterSpacing: 3,
                      ),
                    ),
                    // SizedBox(width: screenSize.width / 15),
                    // InkWell(
                    //   onHover: (value) {
                    //     setState(() {
                    //       value
                    //           ? _isHovering[0] = true
                    //           : _isHovering[0] = false;
                    //     });
                    //   },
                    //   onTap: () {},
                    //   child: Column(
                    //     mainAxisSize: MainAxisSize.min,
                    //     children: [
                    //       Text(
                    //         'Home',
                    //         style: TextStyle(
                    //             color: _isHovering[0]
                    //                 ? Color(0xFF077bd7)
                    //                 : Color(0xFF077bd7),
                    //             fontWeight: FontWeight.bold,
                    //             fontSize: 16),
                    //       ),
                    //       SizedBox(height: 100),
                    //       Visibility(
                    //         maintainAnimation: true,
                    //         maintainState: true,
                    //         maintainSize: true,
                    //         visible: _isHovering[0],
                    //         child: Container(
                    //           height: 2,
                    //           width: 20,
                    //           color: Color(0xFF051441),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'info_card.dart';

class OverviewCardsMediumScreenSizes extends StatelessWidget {
  const OverviewCardsMediumScreenSizes({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Column(mainAxisSize: MainAxisSize.min, children: [
      Row(
        children: [
          InfoCard(
            title: "Rides in progress",
            value: "7",
            onTap: () {},
            topColor: Colors.orange,
          ),
          SizedBox(
            width: _width / 64,
          ),
          InfoCard(
            title: "Packages delivered",
            value: "17",
            onTap: () {},
            topColor: Colors.green,
          ),
        ],
      ),
      SizedBox(
        height: 16,
      ),
      Row(
        children: [
          InfoCard(
            title: "Cancelled delivered",
            value: "3",
            onTap: () {},
            topColor: Colors.red,
          ),
          SizedBox(
            width: _width / 64,
          ),
          InfoCard(
            title: "Scheduled deliveries",
            value: "3",
            onTap: () {},
            topColor: Colors.blue,
          ),
        ],
      )
    ]);
  }
}

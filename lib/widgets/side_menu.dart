import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test1/widgets/responsive.dart';
import 'package:test1/widgets/side_menu_item.dart';

import '../constants/controller.dart';
import '../constants/style.dart';
import '../routing/routes.dart';
import 'custom_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset("lib/assets/icons/icons.png"),
                    ),
                    Flexible(
                      child: CustomText(
                        text: "Hai An",
                        size: 20,
                        weight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: _width / 48),
                  ],
                ),
              ],
            ),
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((item) => SideMenuItem(
                      itemName: item.name,
                      onTap: () {
                        if (item.route == AuthenticationPageRoute) {
                          menuController1
                              .changeActiveItemTo(DriversPageDisplayName);
                          Get.offAllNamed(AuthenticationPageRoute);
                        }
                        if (!menuController1.isActive(item.name)) {
                          menuController1.changeActiveItemTo(item.name);
                          if (ResponsiveWidget.isSmallScreen(context))
                            Get.back();
                          navigationController.navigateTo(item.route);
                        }
                      },
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

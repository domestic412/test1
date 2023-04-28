import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../constants/controller.dart';
import '../constants/style.dart';
import 'custom_text.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const HorizontalMenuItem({Key key, this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return InkWell(
        onTap: onTap,
        onHover: (value) {
          value
              ? menuController1.onHover(itemName)
              : menuController1.onHover("not hovering");
        },
        child: Obx(() => Container(
              color: menuController1.isHovering(itemName)
                  ? lightGrey.withOpacity(.1)
                  : Colors.transparent,
              child: Row(
                children: [
                  Visibility(
                    visible: menuController1.isHovering(itemName) ||
                        menuController1.isActive(itemName),
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: Container(
                      width: 6,
                      height: 40,
                      color: dark,
                    ),
                  ),
                  SizedBox(width: _width / 80),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: menuController1.returnIconFor(itemName),
                  ),
                  if (!menuController1.isActive(itemName))
                    Flexible(
                        child: CustomText(
                      text: itemName,
                      color: menuController1.isHovering(itemName)
                          ? dark
                          : lightGrey,
                    ))
                  else
                    Flexible(
                        child: CustomText(
                      text: itemName,
                      color: dark,
                      size: 18,
                      weight: FontWeight.bold,
                    ))
                ],
              ),
            )));
  }
}

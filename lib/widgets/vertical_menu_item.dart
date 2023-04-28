import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/controller.dart';
import '../constants/style.dart';
import 'custom_text.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const VerticalMenuItem({Key key, this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      width: 3,
                      height: 72,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: menuController1.returnIconFor(itemName),
                          ),
                          if (!menuController1.isActive(itemName))
                            Flexible(
                                child: CustomText(
                              text: itemName,
                              color: menuController1.isHovering(itemName)
                                  ? Colors.white
                                  : lightGrey,
                            ))
                          else
                            Flexible(
                                child: CustomText(
                              text: itemName,
                              color: Colors.white,
                              size: 18,
                              weight: FontWeight.bold,
                            ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}

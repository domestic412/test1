import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:test1/pages/drivers/widgets/drivers_table.dart';

import 'package:test1/widgets/custom_text.dart';

import '../../constants/controller.dart';
import '../../widgets/responsive.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(
                    text: menuController1.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                )
              ],
            )),
        Expanded(
            child: ListView(
          children: [DriversTable()],
        ))
      ],
    );
  }
}

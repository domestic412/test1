import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/constants/controller.dart';
import 'package:test1/pages/overview/widgets/available_drivers_table.dart';
import 'package:test1/pages/overview/widgets/overview_cards_large.dart';
import 'package:test1/pages/overview/widgets/overview_cards_medium.dart';
import 'package:test1/pages/overview/widgets/overview_cards_small.dart';
import 'package:test1/pages/overview/widgets/revenue_section_large.dart';
import 'package:test1/pages/overview/widgets/revenue_section_small.dart';
import 'package:test1/widgets/custom_text.dart';
import 'package:test1/widgets/responsive.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key key}) : super(key: key);

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
          children: [
            if (ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.isMediumScreen(context))
              if (ResponsiveWidget.isCustomSize(context))
                OverviewCardsMediumScreenSizes()
              else
                OverViewCardsLargeScreen()
            else
              OverviewCardsSmallScreen(),
            if (!ResponsiveWidget.isSmallScreen(context))
              RevenueSectionLarge()
            else
              RevenueSectionSmall(),
            AvailableDriversTable(),
          ],
        ))
      ],
    );
  }
}

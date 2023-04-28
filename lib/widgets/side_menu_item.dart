import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:test1/widgets/horizontal_menu_item.dart';
import 'package:test1/widgets/responsive.dart';
import 'package:test1/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const SideMenuItem({Key key, this.itemName, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context))
      return VerticalMenuItem(itemName: itemName, onTap: onTap);

    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../helper/local_navigator.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16), child: localNavigator());
  }
}

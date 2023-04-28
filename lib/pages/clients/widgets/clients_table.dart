import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../constants/style.dart';
import '../../../widgets/custom_text.dart';

class ClientsTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            margin: EdgeInsets.only(top: size.height),
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

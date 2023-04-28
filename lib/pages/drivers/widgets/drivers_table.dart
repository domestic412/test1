import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../constants/style.dart';
import '../../../widgets/custom_text.dart';

class DriversTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: active.withOpacity(.4), width: .5),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 6),
              color: lightGrey.withOpacity(.1),
              blurRadius: 12)
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 30),
      child: DataTable(
          columnSpacing: 12,
          horizontalMargin: 12,
          // minWidth: 600,
          columns: [
            DataColumn(
              label: Text("STT"),
              // size: ColumnSize.L,
            ),
            DataColumn(
              label: Text('Số Container'),
            ),
            DataColumn(
              label: Text('Trạng thái'),
            ),
            DataColumn(
              label: Text('Kích thước'),
            ),
            DataColumn(
              label: Text('Chuyến tàu'),
            ),
            DataColumn(
              label: Text('F/E'),
            ),
            DataColumn(
              label: Text('Số vận đơn'),
            ),
            DataColumn(
              label: Text('Số booking'),
            ),
          ],
          rows: List<DataRow>.generate(
              7,
              (index) => DataRow(cells: [
                    DataCell(CustomText(text: "Santos Enoque")),
                    DataCell(CustomText(text: "New yourk city")),
                    DataCell(CustomText(text: "New yourk city")),
                    DataCell(CustomText(text: "New yourk city")),
                    DataCell(CustomText(text: "New yourk city")),
                    DataCell(CustomText(text: "New yourk city")),
                    DataCell(Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.deepOrange,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CustomText(
                          text: "4.5",
                        )
                      ],
                    )),
                    DataCell(Container(
                        decoration: BoxDecoration(
                          color: light,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: active, width: .5),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        child: CustomText(
                          text: "Assign Delivery",
                          color: active.withOpacity(.7),
                          weight: FontWeight.bold,
                        ))),
                  ]))),
    );
  }
}

import 'dart:convert';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

final today = DateUtils.dateOnly(DateTime.now());
String sDay = '';
String sMon = '';
String sYear = '';
String eDay = '';
String eMon = '';
String eYear = '';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  List<DateTime?> _rangeDatePickerValueWithDefaultValue = [
    today,
    today,
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SizedBox(
          width: 375,
          child: Column(
            children: <Widget>[
              _buildDefaultRangeDatePickerWithValue(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDefaultRangeDatePickerWithValue() {
    final config = CalendarDatePicker2Config(
      calendarType: CalendarDatePicker2Type.range,
      selectedDayHighlightColor: Colors.teal[800],
      weekdayLabelTextStyle: const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
      controlsTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 50),
        const Text(
          'Booking Detail',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 50,
        ),
        CalendarDatePicker2(
          config: config,
          value: _rangeDatePickerValueWithDefaultValue,
          onValueChanged: (dates) =>
              setState(() => _rangeDatePickerValueWithDefaultValue = dates),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            SizedBox(width: 10),
          ],
        ),
        const SizedBox(height: 25),
        _buttonchecking(),
      ],
    );
  }

  Widget _buttonchecking() {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      // onPrimary: Colors.black87,
      // primary: Colors.grey[300],
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );
    return ElevatedButton(
      style: raisedButtonStyle,
      onPressed: () {
        List<DateTime?> values = _rangeDatePickerValueWithDefaultValue;
        values = values
            .map((e) => e != null ? DateUtils.dateOnly(e) : null)
            .toList();

        if (values.isNotEmpty) {
          final startDate = values[0].toString().replaceAll('00:00:00.000', '');
          final endDate = values.length > 1
              ? values[1].toString().replaceAll('00:00:00.000', '')
              : '                           ';
          // print(startDate);
          // print(endDate);
          String startDay = startDate.toString().substring(8, 10);
          String startMonth = startDate.toString().substring(5, 7);
          String startYear = startDate.toString().substring(0, 4);
          String endDay = endDate.toString().substring(8, 10);
          String endMonth = endDate.toString().substring(5, 7);
          String endYear = endDate.toString().substring(0, 4);
          sDay = startDay;
          sMon = startMonth;
          sYear = startYear;
          eDay = endDay;
          eMon = endMonth;
          eYear = endYear;
        }
        _checking();
      },
      child: Text('Check Route'),
    );
  }

  Future<void> _checking() async {
    var url = 'https://192.168.7.198:1214/api/Login';
    Map data = {
      'startDay': sDay,
      'startMonth': sMon,
      'startYear': sYear,
      'endDay': eDay,
      'endMonth': eMon,
      'endYear': eYear
    };
    // print(sDay + ' ' + sMon + ' ' + sYear);
    // print(eDay + '-' + eMon + '-' + eYear);
    var body = json.encode(data);
    var response = await http.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"}, body: body);
    if (response.statusCode == 200) {
      var body = response.body;
      var data = jsonDecode(body.toString());
      print(data['token']);
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => const Second(),
      //     ));
      // _listroute();
      ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(16),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      data[index].vessel,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      data[index].route,
                      style: const TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      data[index].time,
                      style: const TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  )
                ],
              ),
            );
          });
    } else {
      print('No response');
      //loginAlert.showMyAlert(context);
    }
  }
}

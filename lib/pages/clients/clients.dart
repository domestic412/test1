import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:intl/intl.dart';
import 'package:test1/constants/style.dart';
import 'package:test1/pages/clients/widgets/clients_table.dart';
import 'package:test1/widgets/custom_text.dart';

import '../../constants/controller.dart';
import '../../widgets/responsive.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: haian,
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              margin: EdgeInsets.only(top: size.height * 0.25),
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  _HeaderSection(),
                  _SearchCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _HeaderSection extends StatelessWidget {
  const _HeaderSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(),
        const Padding(
          padding: EdgeInsets.all(40.0),
          child: CustomText(
            text: "Booking Online",
            weight: FontWeight.bold,
            size: 20,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

class _SearchCard extends StatelessWidget {
  const _SearchCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locationTextController = TextEditingController();
    final dateFromTextController = TextEditingController();
    final dateToTextController = TextEditingController();
    locationTextController.text = 'Hai Phong';
    dateFromTextController.text = dateToTextController.text =
        DateFormat('dd MMM yyyy').format(DateTime.now());
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: lightGrey.withAlpha(1000),
        ),
      ),
      child: Column(children: [
        Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: haian,
            ),
            const SizedBox(
              width: 20.0,
            ),
            CustomTextField(
              label: 'Where',
              controller: locationTextController,
            )
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.calendar_month,
              color: haian,
            ),
            const SizedBox(
              width: 20.0,
            ),
            CustomTextField(
              label: 'Date From',
              controller: dateFromTextController,
            ),
            CustomTextField(
              label: 'Date To',
              controller: dateToTextController,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        CustomButton()
      ]),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(haian),
            elevation: MaterialStateProperty.all(0.0),
            minimumSize: MaterialStateProperty.all(const Size(200, 50))),
        child: const CustomText(
          text: 'Search',
          color: Colors.white,
        ));
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  const CustomTextField({
    Key key,
    this.controller,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: TextField(
      controller: controller,
      decoration: InputDecoration(
        label: CustomText(
          text: label,
          size: 15,
          color: haian,
          weight: FontWeight.bold,
        ),
        border: InputBorder.none,
      ),
    ));
  }
}

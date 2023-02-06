import 'package:flutter/material.dart';
import 'package:moovbe/constants/constants.dart';
import 'package:moovbe/components/drivers_list_widgets.dart';
import 'package:moovbe/components/red_button.dart';
import 'package:moovbe/screens/add_driver.dart';

class DriverList extends StatefulWidget {
  const DriverList({Key? key}) : super(key: key);

  static String id = 'driver_list_screen';

  @override
  State<DriverList> createState() => _DriverListState();
}

class _DriverListState extends State<DriverList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 110,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 90),
          child: Text(
            'Driver List',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_sharp,
            size: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.all(15),
            child: const Text(
              '21 Buses found',
              style: TextStyle(
                color: Color(0xFF6B6B6B),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const DriverListWidget(),
          const DriverListWidget(),
          const DriverListWidget(),
          const SizedBox(
            height: 110,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, AddDriver.id);
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: kButtonColor,
              height: 58.0,
              minWidth: MediaQuery.of(context).size.width,
              child: const Text(
                'Add Drivers',
                style: TextStyle(
                  color: kButtonLabelColor,
                  fontSize: 20.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

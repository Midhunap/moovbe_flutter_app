import 'package:flutter/material.dart';
import 'package:moovbe/screens/add_driver.dart';
import 'package:moovbe/screens/login_screen.dart';
import 'package:moovbe/screens/bus_manage.dart';
import 'screens/getstart.dart';
import 'screens/home.dart';
import 'screens/bus_seat2.dart';
import 'screens/driver_list.dart';

void main() {
  runApp(const Moovbe());
}

class Moovbe extends StatelessWidget {
  const Moovbe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: GetStarted.id,
      routes: {
        GetStarted.id: (context) => const GetStarted(),
        LogInScreen.id: (context) => const LogInScreen(),
        Home.id: (context) => const Home(),
        BusManage.id: (context) => const BusManage(),
        BusSeat2.id: (context) => const BusSeat2(),
        DriverList.id: (context) => const DriverList(),
        AddDriver.id: (context) => const AddDriver(),
      },
      home: const GetStarted(),
    );
  }
}

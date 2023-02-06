import 'package:flutter/material.dart';
import 'package:moovbe/constants/constants.dart';
import 'package:moovbe/components/bus_list_widgets.dart';
import 'package:moovbe/screens/driver_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static String id = 'home_screen';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                color: Colors.black,
                width: double.infinity,
                height: 110,
                child: Center(
                  child: Image.asset(
                    'images/logo.png',
                    width: 130,
                    height: 40,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      height: 180,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Bus',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Manage your bus',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            Image.asset(
                              'images/home/bus.png',
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      height: 180,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Driver',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Manage your driver',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 35,
                                ),
                                Image.asset(
                                  'images/home/driver2.png',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, DriverList.id);
                    },
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  '21 Bus found',
                  style: TextStyle(
                    color: Color(0xFF6B6B6B),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const BusListWidget(),
            const BusListWidget(),
            const BusListWidget(),
            const BusListWidget(),
            const BusListWidget(),
          ],
        ),
      ),
    );
  }
}

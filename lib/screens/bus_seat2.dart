import 'package:flutter/material.dart';
import 'package:moovbe/constants/constants.dart';

class BusSeat2 extends StatefulWidget {
  const BusSeat2({Key? key}) : super(key: key);
  static String id = 'bus_seat_screen';

  @override
  State<BusSeat2> createState() => _BusSeat2State();
}

class _BusSeat2State extends State<BusSeat2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 110,
        title: const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            'KSRTC Swift Scania P-series',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            //back to previous page
          },
          icon: const Icon(
            Icons.arrow_back_sharp,
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 23),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 120,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Rohit Sharma',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'License no: PJ515196161655',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Image.asset('images/home/Driver.png'),
                    ),
                  ],
                ),
                // width: 335,
              ),
              Container(
                margin: const EdgeInsets.all(30),
                height: 500,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.1),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

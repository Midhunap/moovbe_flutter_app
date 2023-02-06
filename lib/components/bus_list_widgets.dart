import 'package:flutter/material.dart';
import 'package:moovbe/constants/constants.dart';
import 'package:moovbe/screens/bus_manage.dart';

class BusListWidget extends StatelessWidget {
  const BusListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(width: 0.1),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: double.infinity,
                color: const Color(0xFFF3F3F3),
                child: Image.asset('images/home/buses.png'),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'KSRTC',
                      style: kKSRTCTextStyle,
                    ),
                    Text(
                      'Swif Scanaia  P-series',
                      style: kKSRTCTextStyle,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 80,
                height: 40,
                child: TextButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.red)),
                    onPressed: () {
                      Navigator.pushNamed(context, BusManage.id);
                    },
                    child: const Text(
                      'Manage',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

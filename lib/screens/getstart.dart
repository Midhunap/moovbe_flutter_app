import 'package:flutter/material.dart';
import 'package:moovbe/screens/login_screen.dart';
import 'package:moovbe/components/red_button.dart';
import 'package:moovbe/constants/constants.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  static String id = 'getStarted_screen';

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFC153B),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Image.asset(
                'images/logo.png',
                width: 205.75,
                height: 60.0,
              ),
            ),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LogInScreen.id);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.white,
                  height: 58.0,
                  minWidth: MediaQuery.of(context).size.width,
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Color(0xFFFC153B),
                      fontSize: 20.0,
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
// height: 43.80436325073242px;
// width: 205.75823974609375px;
// left: 85px;
// top: 375.1996307373047px;
// border-radius: 0px;
// Positioned(
//   left: 0,
//   bottom: 40,
//   child: Padding(
//     padding: const EdgeInsets.all(15.),
//     child: Container(
//       height: 50,
//       width: MediaQuery.of(context).size.width,
//       color: Colors.lightBlue,
//     ),
//   ),

import 'package:flutter/material.dart';
import 'package:moovbe/constants/constants.dart';
import 'package:moovbe/components/red_button.dart';
import 'package:moovbe/screens/home.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  static String id = 'login_screen';

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 220,
            color: Colors.black,
            child: Row(
              children: [
                const SizedBox(
                  width: 109.5,
                ),
                Image.asset(
                  'images/login_screen/Polygon2.png',
                  height: 266,
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Text(
                'Welcome',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 41,
                    fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  'Manage your Bus and drivers',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kTextFieldColor,
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: kTextFieldColor,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kTextFieldColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter Username ',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kTextFieldColor,
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: kTextFieldColor,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kTextFieldColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter Username ',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, Home.id);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.red,
                height: 58.0,
                minWidth: MediaQuery.of(context).size.width,
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

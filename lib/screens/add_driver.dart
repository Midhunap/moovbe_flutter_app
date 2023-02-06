import 'package:flutter/material.dart';
import 'package:moovbe/constants/constants.dart';
import 'package:moovbe/components/red_button.dart';

class AddDriver extends StatefulWidget {
  const AddDriver({Key? key}) : super(key: key);
  static String id = 'add_driver_screen';

  @override
  State<AddDriver> createState() => _AddDriverState();
}

class _AddDriverState extends State<AddDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 110,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 100),
          child: Text(
            'Add Driver',
            style: TextStyle(color: Colors.white, fontSize: 15),
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: kTextFieldlabelColor,
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
                    style: const TextStyle(
                      color: kTextFieldlabelColor,
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
                      hintText: 'Enter Password ',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 300,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: RedButton(
              buttonLabel: 'Save',
              color: kButtonColor,
              labelColor: kButtonLabelColor,
            ),
          ),
        ],
      ),
    );
  }
}

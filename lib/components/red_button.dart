import 'package:flutter/material.dart';
import 'package:moovbe/constants/constants.dart';

class RedButton extends StatelessWidget {
  const RedButton(
      {Key? key, required this.buttonLabel, this.color, this.labelColor})
      : super(key: key);

  final String? buttonLabel;
  final Color? color;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: color,
      height: 58.0,
      minWidth: MediaQuery.of(context).size.width,
      child: Text(
        '$buttonLabel',
        style: TextStyle(
          color: labelColor,
          fontSize: 20.0,
        ),
      ),
    );
  }
}

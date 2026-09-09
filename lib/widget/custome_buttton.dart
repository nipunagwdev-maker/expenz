import 'package:expense_master_proj_07/constants/colors/colors.dart';
import 'package:flutter/material.dart';

class CustomeButtton extends StatelessWidget {
  final String buttonName;
  final Color buttonColor;

  const CustomeButtton({
    super.key,
    required this.buttonName,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,

      //width: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: buttonColor,
      ),
      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

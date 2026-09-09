import 'package:expense_master_proj_07/constants/colors/colors.dart';
import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/logo.png", width: 150, fit: BoxFit.cover),
        const SizedBox(height: 10),
        Text(
          'Expenze',
          style: TextStyle(
            fontSize: 40,
            color: kMainColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}

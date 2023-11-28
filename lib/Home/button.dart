// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class SButtons extends StatelessWidget {
  final ontap;

  const SButtons({super.key,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 171, 242, 174),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            'Submit',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

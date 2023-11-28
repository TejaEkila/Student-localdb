// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:localdb/Home/stu_home.dart';
import 'package:localdb/model/items.dart';

class Data_page extends StatelessWidget {
  const Data_page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Home_stu(),
           Expanded(child: Items_page()),
        ],
      ),
      
    );
  }
}
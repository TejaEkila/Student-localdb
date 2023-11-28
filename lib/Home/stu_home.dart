// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:localdb/Home/addstudent.dart';
import 'package:localdb/model/items.dart';


class Home_stu extends StatefulWidget {
  const Home_stu({super.key});

  @override
  State<Home_stu> createState() => _Home_stuState();
}

class _Home_stuState extends State<Home_stu> {
  //final _formKey = GlobalKey<FormState>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(134, 120, 234, 202),
      body: Column(
        children: const [
          addstudent(),
          Expanded(child: Items_page())

        ],
      )
    );
  }

 
}

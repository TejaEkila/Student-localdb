// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:localdb/Home/stu_home.dart';
import 'package:localdb/stulogin_page/login_page.dart';
import 'package:localdb/stulogin_page/mytextfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginpage(),
      routes:{
        '/loginpage' :(context) => loginpage(),
        '/Home_stu' :(context) => Home_stu(),
        
        
      } ,

    );
  }
}


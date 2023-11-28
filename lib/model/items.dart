// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:localdb/model/db_function/db.dart';
import 'package:localdb/model/student_model.dart';

class Items_page extends StatefulWidget {
  const Items_page({super.key});

  @override
  State<Items_page> createState() => _Items_pageState();
}

class _Items_pageState extends State<Items_page> {
  String name = "";
  String course = "";
  String age = "";
  String year = "";
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: studentListNotifier,
        builder:
            (BuildContext ctx, List<StudentModel> studentList, Widget? child) {
          return ListView.separated(
            itemBuilder: (ctx, index) {
              final data = studentList[index];
              return ListTile(
                title: Text(data.name),
                subtitle: Text("${data.age},${data.course}"),
                
              );
            },
            separatorBuilder: (ctx, index) {
              return const Divider();
            },
            itemCount: studentList.length,
          );
        });
  }
}

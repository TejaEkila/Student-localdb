// ignore_for_file: camel_case_types, prefer_const_constructors, no_leading_underscores_for_local_identifiers, avoid_print

import 'package:flutter/material.dart';
import 'package:localdb/Home/button.dart';
import 'package:localdb/Home/textfileds.dart';
import 'package:localdb/model/db_function/db.dart';
import 'package:localdb/model/student_model.dart';

class addstudent extends StatefulWidget {
  const addstudent({super.key});

  @override
  State<addstudent> createState() => addstudentState();
}

class addstudentState extends State<addstudent> {
  final studentnameController = TextEditingController();
  final courseController = TextEditingController();
  final ageController = TextEditingController();
  final yearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      //key: _formKey,
      children: [
        SizedBox(
          height: 80,
        ),
        const Center(
          child: Text(
            'S T U D E N T  D E T A I L S',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        //student nam
        Textfields(
          Controller: studentnameController,
          hinttext: 'StudentName',
        ),
        //student course
        SizedBox(
          height: 10,
        ),
        Textfields(
          Controller: courseController,
          hinttext: 'Course',
        ),
        //student Age
        SizedBox(
          height: 10,
        ),
        Textfields(
          Controller: ageController,
          hinttext: 'StudentAge',
        ),
        //year
        SizedBox(
          height: 10,
        ),
        Textfields(
          Controller: yearController,
          hinttext: 'Year',
        ),
        //submit
        SizedBox(
          height: 30,
        ),
        GestureDetector(
          child: SButtons(
            ontap: () {
              onAddStudentButtonClicked();
              print('hello');
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        // Container(
        //   height: 350,
        //   width: 400,
        //   color: Colors.amber,
        // ),
        //Items_page()
      ],
    );
  }

  Future<void> onAddStudentButtonClicked() async {
    final _name = studentnameController.text.trim();
    final _age = ageController.text.trim();
    final _course = courseController.text.trim();
    final _year = yearController.text.trim();
    if (_name.isEmpty || _age.isEmpty || _course.isEmpty || _year.isEmpty) {
      return;
    }
    print('$_name $_course $_age $_year ');
    final _student =
        StudentModel(name: _name, course: _course, age: _age, year: _year);

    addstudents(_student);
  }
}

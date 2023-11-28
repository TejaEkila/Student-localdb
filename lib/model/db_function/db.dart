// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member, avoid_print

import 'package:flutter/material.dart';
import 'package:localdb/model/student_model.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

void addstudents(StudentModel value) {
  studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners();
  print(value.toString());
}

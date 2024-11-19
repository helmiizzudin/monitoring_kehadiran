import '../models/history.dart';
import '../models/student.dart';
import 'package:flutter/material.dart';
import 'package:int1/int1.dart';

class Studentsprovider with ChangeNotifier {
  List<Student> _students = [
    Student(name: 'Ali'),
    Student(name: 'Budi'),
    Student(name: 'Citra'),
  ];

  List<History> _history = [];

  List<Student> get Students => _students;
  List<History> get history => _history;

  void saveAttedance(){
    final presentCount = _students.where((s) => s.isPresent).length;
    final absenCount = _students.length - presentCount;

    _history.insert(
      0, 
      History(
      date: DateFormat('dd MMM yyyy').format(DateTime.now()), 
      presentCount: presentCount, 
      absenCount: absenCount,
      ),
    );

    for (var student in _students){
      student.isPresent = false;
    }

    notifyListeners();
  }
}
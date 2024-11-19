import 'package:flutter/material.dart';
import '../models/student.dart';

class StudentItem extends StatelessWidget{
  final Student student;

  StudentItem({required this.student});

  @override
  Widget build(BuildContext context){
    return ListTile(
      title: Text(student.name),
      trailing: Checkbox(
        value: student.isPresent, 
        onChanged: (value){
          student.isPresent = value!;
        }
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../providers/studentsProvider.dart';
import '../widgets/studentItem.dart';

class Attedancescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final studentProvider = Provider.of<StudentProvider>(context);
    final students = studentProvider.students;

    return Scaffold(
      appBar: AppBar(title: Text('Pencatatan Kehadiran')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (ctx,i) => StudentItem(student:students[i]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: students.isEmpty
              ? null
              : () {
                studentProvider.saveAttedance();
              }, 
              child: Text('Simpan Kehadiran'),
            ),
          )
        ],
      ),
    );
  }
}
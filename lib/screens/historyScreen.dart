import 'package:flutter/material.dart';
import '../providers/studentsProvider.dart';
import '../widgets/historyItem.dart';

class Historyscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final history = Provider.of<StudentProvider>(context).history;

    return Scaffold(
      appBar: AppBar(title: Text('Riwayat Kehadiran')),
      body: history.isEmpty
          ? Center(child: Text('Belum ada riwayat kehadiran'))
          : ListView.builder(
            itemCount: history.length,
            itemBuilder: (ctx, i) => HistoryItem(history: history[i]),
      ),
    );
  }
}
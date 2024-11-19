import 'package:flutter/material.dart';
import '../models/history.dart';

class HistoryItem extends StatelessWidget{
  final History history;

  HistoryItem({required this.history});

  @override
  Widget build(BuildContext context){
    return ListTile(
      title: Text(history.date),
      subtitle: Text('Hadir: ${history.presentCount} Tidak Hadir: ${history.absenCount}'),
    );
  }
}
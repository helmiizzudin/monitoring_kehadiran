import 'package:flutter/material.dart';
import './providers/studentsProvider.dart';
import './screens/attedanceScreen.dart';
import './screens/historyScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => StudentProvider(),
      child: MaterialApp(
        home: BottomNavigationBar(),
      )
    );
  }
}

class _BottomNavBarState extends State<BottomNavigationBar> {
  int _selectedIndex = 0;

  final _pages= [AttedanceScreen(), Historyscreen()];

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
          setState((){
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: 'Pencatatan'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Riwayat'),
        ],
      ),
    );
  }
}


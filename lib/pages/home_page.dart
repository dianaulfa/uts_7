import 'package:flutter/material.dart';
import 'beranda_page.dart';
import 'input_page.dart';
import 'hasil_page.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _index = 0;

  final List<Widget> _pages = [
    BerandaPage(),
    InputPage(),
    HasilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        selectedItemColor: Colors.green,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Input"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Hasil"),
        ],
      ),
    );
  }
}

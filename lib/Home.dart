import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _Index = 0;
  static const TextStyle selectstyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const _navItems = [
    Text('TAB: 0', style: selectstyle),
    Text('TAB: 1', style: selectstyle),
    Text('TAB: 2', style: selectstyle),
    Text('TAB: 3', style: selectstyle),
  ];

  void _incrementTab(index) {
    setState(() {
      _Index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar With FAB',
            style: TextStyle(fontSize: 23, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: _navItems.elementAt(_Index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        backgroundColor: Colors.brown,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'This',
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers),
            label: 'is',
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Bottom',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Bar',
            backgroundColor: Colors.lightBlue,
          ),
        ],
        currentIndex: _Index,
        selectedItemColor: Colors.deepOrange,
        onTap: (index) {
          _incrementTab(index);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: new FloatingActionButton(
        splashColor: Colors.black,
        onPressed: () {
          _incrementTab(1);
        },
        tooltip: 'Increment',
        child: new Icon(Icons.add),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}

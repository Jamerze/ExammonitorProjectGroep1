import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Home';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Examenvragen',
      style: optionStyle,
    ),
    Text(
      'Studenten',
      style: optionStyle,
    ),
    Text(
      'Instellingen',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_note),
            label: 'Examenvragen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Studenten',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_sharp),
            label: 'Instellingen',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 158, 14, 14),
        onTap: _onItemTapped,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task/Home_Page/sendata_screen.dart';
import 'package:task/Home_Page/view_screen.dart';
import 'package:task/Model_page/add_data.dart';

import 'add_screen.dart';


class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  _Home_screenState createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Add_Screen(),
    View_screen(),
   Senddata_screen(datalist: '',)
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
        title: Text('Task'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Task"),
              accountEmail: Text("Task@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "T",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home), title: Text("Home"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Add_Screen()),
                );
              },
            ),
            const Divider(
              thickness: 1.0,
            ),
            ListTile(
              leading: Icon(Icons.report), title: Text("View"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  View_screen()),
                );
              },
            ),
            const Divider(
              thickness: 1.0,
            ),

            ListTile(
              leading: Icon(Icons.contacts), title: Text("Select "),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Senddata_screen(datalist: '')),
                );
              },
            ),
            const Divider(
              thickness: 1.0,
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.report),
                title: Text('View'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Select'),
              backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 25,
          onTap: _onItemTapped,
          elevation: 5
      ),
    );

  }
}

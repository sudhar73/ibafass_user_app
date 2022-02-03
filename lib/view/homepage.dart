import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> _Widgetoptions=[
    Text('arun'),
    Text('arun'),
    Text('Arun'),
    Text('Arun'),
    Text('Arun'),
  ];

  int indexvalue=0;
  @override
  Widget build(BuildContext context) {
    const IconData book = IconData(0xe0ef, fontFamily: 'MaterialIcons');
    const IconData notes = IconData(0xe44c, fontFamily: 'MaterialIcons');
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),topLeft: Radius.circular(30.0)),
        child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          selectedFontSize: 15,
          showUnselectedLabels:false,
          iconSize: 30,
          currentIndex: indexvalue,
          onTap: (index)=>setState(() {
            indexvalue=index;
          }),
          items: [
          BottomNavigationBarItem(
              icon:Image(
                image: AssetImage('assets/bottomnavigationbaricons/attendance.png'),
              ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(book),
              label: 'Leave',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              label: 'Directory',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(notes),
              label: 'Attendance',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.black),
        ],


        ),
      ),
      body: Center(
        child: _Widgetoptions[indexvalue],
      )
    );
  }
}

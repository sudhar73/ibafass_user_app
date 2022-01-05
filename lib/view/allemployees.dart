import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AllEmployees extends StatefulWidget {
  const AllEmployees({Key? key}) : super(key: key);

  @override
  _AllEmployeesState createState() => _AllEmployeesState();
}

class _AllEmployeesState extends State<AllEmployees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Container(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 3, top: 80),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "All Employees",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  color: HexColor("#0F46B3"),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: HexColor("#DCF4F9"),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      height: MediaQuery.of(context).size.height / 1.25,
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: ListView(
                          children: [
                            Container(
                              height: 80,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: ListTile(
                                leading: CircleAvatar(
                                    radius: 40,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/drawer/person.jpg"),
                                    )),
                                title: Text(
                                  'Mani',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                subtitle: Text('UI Designer'),
                                trailing: Icon(Icons.more_vert),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 80,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: ListTile(
                                leading: CircleAvatar(
                                    radius: 40,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/drawer/person.jpg"),
                                    )),
                                title: Text(
                                  'Mani',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                subtitle: Text('UI Designer'),
                                trailing: Icon(Icons.more_vert),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 80,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: ListTile(
                                leading: CircleAvatar(
                                    radius: 40,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/drawer/person.jpg"),
                                    )),
                                title: Text(
                                  'Mani',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                subtitle: Text('UI Designer'),
                                trailing: Icon(Icons.more_vert),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 80,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: ListTile(
                                leading: CircleAvatar(
                                    radius: 40,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/drawer/person.jpg"),
                                    )),
                                title: Text(
                                  'Mani',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                subtitle: Text('UI Designer'),
                                trailing: Icon(Icons.more_vert),
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

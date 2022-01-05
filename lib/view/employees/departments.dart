import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Departments extends StatefulWidget {
  const Departments({Key? key}) : super(key: key);

  @override
  _DepartmentsState createState() => _DepartmentsState();
}

class _DepartmentsState extends State<Departments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: HexColor('#0F46B3'),
            child: Column(children: [
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Row(
                  children: [
                    Flexible(
                      flex: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.arrow_back_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Center(
                        child: Text(
                          'Departments',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.15,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Text(
                        'List of Departments',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 22),
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, right: 10),
                      child: Image(
                        image:
                            AssetImage('assets/departments/building icon.png'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: HexColor('#DCF4F9'),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              height: MediaQuery.of(context).size.height / 1.30,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        )),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.15,
                    child: Row(
                      children: [
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: HexColor('#F1F3FE'),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            height: MediaQuery.of(context).size.height / 18,
                            width: MediaQuery.of(context).size.width / 10,
                            child: Icon(
                              Icons.search,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )),
                    height: MediaQuery.of(context).size.height / 1.65,
                    width: MediaQuery.of(context).size.width / 1.15,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          color: HexColor('#F5FFF8'),
                          shadowColor: HexColor('#03B644'),
                          elevation: 4,
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width / 1.30,
                            child: Row(children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: HexColor('#4CD080'),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(12.0))),
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 8,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/departments/webdevelopment.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Web Development',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: HexColor('#4CD080'),
                                  )),
                            ]),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          color: Colors.white,
                          shadowColor: Colors.grey,
                          elevation: 4,
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width / 1.30,
                            child: Row(children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: HexColor('#0F46B3'),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(12.0))),
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 8,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/departments/applicationdeveloper.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Application Development',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: HexColor('#0F46B3'),
                                  )),
                            ]),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          color: Colors.white,
                          shadowColor: Colors.grey,
                          elevation: 4,
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width / 1.30,
                            child: Row(children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: HexColor('#0F46B3'),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(12.0))),
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 8,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/departments/itmanagement.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'IT Management',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: HexColor('#0F46B3'),
                                  )),
                            ]),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          color: Colors.white,
                          shadowColor: Colors.grey,
                          elevation: 4,
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width / 1.30,
                            child: Row(children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: HexColor('#0F46B3'),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(12.0))),
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 8,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/departments/accountsmanagement.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Accounts Management',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: HexColor('#0F46B3'),
                                  )),
                            ]),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          color: Colors.white,
                          shadowColor: Colors.grey,
                          elevation: 4,
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width / 1.30,
                            child: Row(children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: HexColor('#0F46B3'),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(12.0))),
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 8,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/departments/marketing.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Marketing',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: HexColor('#0F46B3'),
                                  )),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

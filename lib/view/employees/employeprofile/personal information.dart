import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class personalInformation extends StatefulWidget {
  const personalInformation({Key? key}) : super(key: key);

  @override
  _personalInformationState createState() => _personalInformationState();
}

class _personalInformationState extends State<personalInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: HexColor('#0F46B3'),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
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
                            'Employer Profile',
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
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 45,
                  child: ClipOval(
                    child: Image(
                      image: AssetImage('assets/payment/profilepic.jpg'),
                      fit: BoxFit.cover,
                      height: 90,
                      width: 90,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Mani',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'UI Designer',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: HexColor('#DCF4F9'),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    )),
                height: MediaQuery.of(context).size.height / 1.50,
                width: MediaQuery.of(context).size.width,

                
              ))
        ],
      ),
    );
  }
}

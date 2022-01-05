import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/payment/addcardconfirm.dart';

class SaveMyCard extends StatefulWidget {
  const SaveMyCard({Key? key}) : super(key: key);

  @override
  _SaveMyCardState createState() => _SaveMyCardState();
}

class _SaveMyCardState extends State<SaveMyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
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
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.arrow_back_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Center(
                      child: Text(
                        'Add New Card',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      height: 40,
                      width: 40,
                      child: Icon(
                        Icons.airline_seat_legroom_reduced,
                        size: 40,
                        color: HexColor('#0F46B3'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Scan completed now verify your data',
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
              ),
            )
          ]),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: HexColor('#0F46B3'),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                )),
            height: MediaQuery.of(context).size.height / 1.22,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image(
                            image: AssetImage('assets/payment/Mastercard.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                          top: 10,
                          left: 10,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, top: 20.0),
                            child: Container(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                  Text(
                                    "Balance Amount",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '\$4265.00',
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Platinum',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '15245  .... ....  2021',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ])),
                          )),
                      Positioned(
                          bottom: 20,
                          left: 10,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Container(
                              child: Text(
                                'MANIKANDAN',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          )),
                      Positioned(
                        bottom: 20,
                        right: 50,
                        child: Container(
                          child: Text(
                            '12/24',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'Card holder name',
                      labelStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'Card number',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: TextFormField(
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: 'Expiry Date',
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 30, bottom: 5, top: 5),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.4,
                        child: TextFormField(
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: '3 Digit CVV',
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 1.20,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddCardConfirm()),
                        );
                      },
                      color: HexColor('#0649CC'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "SAVE MY CARD",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

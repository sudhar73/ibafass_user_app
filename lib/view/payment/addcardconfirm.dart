import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/types/gf_toggle_type.dart';
import 'package:hexcolor/hexcolor.dart';

class AddCardConfirm extends StatefulWidget {
  const AddCardConfirm({Key? key}) : super(key: key);

  @override
  _AddCardConfirmState createState() => _AddCardConfirmState();
}

class _AddCardConfirmState extends State<AddCardConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Add Card Confirm',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
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
                height: MediaQuery.of(context).size.height / 1.15,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Your Card',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 10.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Image(
                              image:
                                  AssetImage('assets/payment/Mastercard.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned(
                            top: 10,
                            left: 10,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 30.0, top: 20.0),
                              child: Container(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                              padding: const EdgeInsets.only(left: 30.0),
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
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        height: 10,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: HexColor('#C9F5FC'),
                      ),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.10,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.error_outline,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Top up using any credit card just cost 3%',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: HexColor('#C9F5FC'),
                      ),
                      height: 70,
                      width: MediaQuery.of(context).size.width / 1.10,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Image(
                            image: AssetImage('assets/payment/cardbox.png'),
                            height: 35,
                            width: 35,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                'Automatically activate after openig an account',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: GFToggle(
                              onChanged: (val) {},
                              value: true,
                              disabledTrackColor: Colors.red,
                              enabledTrackColor: HexColor('#0649CD'),
                              type: GFToggleType.ios,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width / 3,
                          child: RaisedButton(
                            onPressed: () {},
                            color: HexColor('#F2F2F2'),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "Cancel",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width / 3,
                          child: RaisedButton(
                            onPressed: () {},
                            color: HexColor('#0649CC'),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "Add Card",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

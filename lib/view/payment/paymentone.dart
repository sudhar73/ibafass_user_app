import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/payment/confirmtransfer.dart';

class PaymentOne extends StatefulWidget {
  const PaymentOne({Key? key}) : super(key: key);

  @override
  _PaymentOneState createState() => _PaymentOneState();
}

class _PaymentOneState extends State<PaymentOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
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
                              'Transfer with bank',
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
                ],
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
                height: MediaQuery.of(context).size.height / 1.20,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                        top: 10.0,
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Bank Account',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          labelText: 'Select Bank',
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 5),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: 'Account Number',
                            labelStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        left: 30.0,
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Set Amount',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 10.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'How much would you like to transfer?',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 25.0,
                      ),
                      child: Text(
                        "\$90.00",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Divider(
                        color: Colors.grey,
                        height: 10,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 30.0, right: 20.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: HexColor('#CDF3FF'),
                                borderRadius: BorderRadius.circular(15.0)),
                            height: 30,
                            width: 80,
                            child: Padding(
                              padding: const EdgeInsets.only(),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '\$100.00',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 10.0, right: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: HexColor('#CDF3FF'),
                                borderRadius: BorderRadius.circular(15.0)),
                            height: 30,
                            width: 80,
                            child: Padding(
                              padding: const EdgeInsets.only(),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '\$150.00',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 20.0, right: 30.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: HexColor('#CDF3FF'),
                                borderRadius: BorderRadius.circular(15.0)),
                            height: 30,
                            width: 80,
                            child: Padding(
                              padding: const EdgeInsets.only(),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '\$200.00',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 90.0),
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width / 1.15,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ConfirmTransfer()),
                            );
                          },
                          color: HexColor('#0F46B3'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          child: Text(
                            "Continue",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/payment/addnewcard.dart';

class TopupCreditcard extends StatefulWidget {
  const TopupCreditcard({Key? key}) : super(key: key);

  @override
  _TopupCreditcardState createState() => _TopupCreditcardState();
}

class _TopupCreditcardState extends State<TopupCreditcard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: IconButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_sharp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Center(
                          child: Text(
                            'Top Up with Credit Card',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 20.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Credit card',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 20.0,
                                ),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Choose your credit card',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor('#2483FF'),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          height: 40,
                          width: 40,
                          child: Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ]),
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
                            padding: const EdgeInsets.all(20.0),
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
                                  )
                                ])),
                          )),
                      Positioned(
                          bottom: 40,
                          left: 18,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                  Text(
                                    "Platinum",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '15245  ....  ....  2021',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ])),
                          )),
                      Positioned(
                        bottom: 50,
                        right: 20,
                        child: Container(
                          width: 42,
                          height: 17,
                          child: Image(
                            image: AssetImage('assets/payment/plainvisa.png'),
                            fit: BoxFit.fill,
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
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
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
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "\$90.00",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Divider(
                        color: Colors.grey,
                        thickness: 0.5,
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
                    SizedBox(
                      height: 30,
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
                                  builder: (context) => AddNewCard()),
                            );
                          },
                          color: HexColor('#3D75E4'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "Top Up Now",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Back to Home',
                      style:
                          TextStyle(fontSize: 18, color: HexColor('#0945BE')),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

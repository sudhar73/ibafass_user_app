import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/payment/paymentone.dart';
import 'package:ibafass/view/payment/topupcreditcard.dart';

class Creditcard extends StatefulWidget {
  const Creditcard({Key? key}) : super(key: key);

  @override
  _CreditcardState createState() => _CreditcardState();
}

class _CreditcardState extends State<Creditcard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(backgroundColor: Colors.white),
        body: Stack(children: [
      Column(children: [
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
              height: 40,
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
                                const EdgeInsets.only(top: 10.0, left: 20.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Credit card',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20.0,
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Choose your credit card',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, top: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: HexColor('#2483FF'),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.add,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ]),
          ]),
          color: HexColor('#0F46B3'),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
      ]),
      Positioned(
        bottom: 0,
        child: Container(
          decoration: BoxDecoration(
              color: HexColor('#DCF4F9'),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              )),
          height: MediaQuery.of(context).size.height / 1.35,
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                height: MediaQuery.of(context).size.height / 8,
                width: MediaQuery.of(context).size.width / 1.20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Image(
                          height: 60,
                          width: 60,
                          image: AssetImage(
                            'assets/payment/ic_master.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Master Card',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'xxxx-xxxx-xxxx-5832',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                height: MediaQuery.of(context).size.height / 8,
                width: MediaQuery.of(context).size.width / 1.20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Image(
                          height: 60,
                          width: 60,
                          image: AssetImage(
                            'assets/payment/ic_visa.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Visa Master',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'xxxx-xxxx-xxxx-8523',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                height: MediaQuery.of(context).size.height / 8,
                width: MediaQuery.of(context).size.width / 1.20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Image(
                          height: 60,
                          width: 60,
                          image: AssetImage(
                            'assets/payment/ic_amex.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'American Express',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'xxxx-xxxx-xxxx-4823',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 1.20,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TopupCreditcard()),
                    );
                  },
                  color: HexColor('#3D75E4'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    ]));
  }
}

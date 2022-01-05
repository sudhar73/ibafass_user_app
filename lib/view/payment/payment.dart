import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/payment/creditcard.dart';
import 'package:ibafass/view/payment/paymentone.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        'Select Method',
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
              height: 50,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Select top up methods',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
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
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              )),
          height: MediaQuery.of(context).size.height / 1.40,
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                shadowColor: Colors.grey,
                elevation: 5,
                child: Container(
                  height: 60,
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        child: Image(
                          image: AssetImage('assets/payment/bank transfer.png'),
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                    Text(
                      'Bank Transfer',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaymentOne()),
                          );
                        },
                        icon: Icon(Icons.arrow_forward_ios)),
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                shadowColor: Colors.grey,
                elevation: 5,
                child: Container(
                  height: 60,
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        child: Image(
                          image: AssetImage('assets/payment/creditcard.png'),
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                    Text(
                      'Credit Card',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Creditcard()),
                          );
                        },
                        icon: Icon(Icons.arrow_forward_ios)),
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                shadowColor: Colors.grey,
                elevation: 5,
                child: Container(
                  height: 60,
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        child: Image(
                          image: AssetImage('assets/payment/upi.png'),
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                    Text(
                      'UPI',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
                  ]),
                ),
              ),
            ),
          ]),
        ),
      ),
    ]));
  }
}

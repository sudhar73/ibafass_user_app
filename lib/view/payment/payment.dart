import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/payment/creditcard.dart';
import 'package:ibafass/view/payment/paymentone.dart';
import 'package:ibafass/view/payment/upi.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: HexColor('#0F46B3'),
          elevation: 0.0,
          title: Text('Select Method',style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white),),
          leading:IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
            ),
          ) ,
          actions: [
            Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ],
        ),
        body: Stack(children: [
      Container(
        child: Column(children: [
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
                        onPressed: () {
                          showMaterialModalBottomSheet(
                            shape:RoundedRectangleBorder( borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),),
                            context: context,
                            builder: (context) =>UPI()
                          );
                        }, icon: Icon(Icons.arrow_forward_ios)),
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

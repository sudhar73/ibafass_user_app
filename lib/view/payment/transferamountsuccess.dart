import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:ibafass/view/payment/creditcard.dart';

class TransferAmountSuccess extends StatefulWidget {
  const TransferAmountSuccess({Key? key}) : super(key: key);

  @override
  _TransferAmountSuccessState createState() => _TransferAmountSuccessState();
}

class _TransferAmountSuccessState extends State<TransferAmountSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#0F46B3'),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: HexColor('#0F46B3'),
        elevation: 0.0,
        title: Text('Transfer Receipt',style: TextStyle(fontWeight: FontWeight.bold,
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
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
            child: Center(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: (BorderRadius.all(
                      Radius.circular(30.0),
                    ))),

                width: MediaQuery.of(context).size.width / 1,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Image(
                      image: AssetImage('assets/payment/paymenttic.png'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Transfer Success',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Center(
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.1,
                          height: 50,
                          child: Center(
                            child: Text(
                              'Your money has successfully sent to Manikandan',
                              style: TextStyle(
                                  fontSize: 16, color: HexColor('#717791')),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Total Transfer',
                      style: TextStyle(fontSize: 16, color: HexColor('#717791')),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\$90.00',
                      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: DottedLine(
                        dashLength: 5,
                        dashGapLength: 3,
                        lineThickness: 2,
                        dashColor: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        left: 20.0,
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Recepient',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: HexColor('#F2F2F2'),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      height: 80,
                      width: MediaQuery.of(context).size.width / 1.20,
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                          ),
                          child: CircleAvatar(
                            radius: 30,
                            child: ClipOval(
                              child: Image(
                                image: AssetImage('assets/payment/profilepic.jpg'),
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          'Manikandan',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        subtitle: Text('5867-0935-7647'),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 1.20,
                      child: RaisedButton(
                        onPressed: () {

                        },
                        color: HexColor('#0F46B3'),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "Done",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Transfer more money',
                      style: TextStyle(color: HexColor('#0F46B3'), fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/payment/transferamountsuccess.dart';

class ConfirmTransfer extends StatefulWidget {
  const ConfirmTransfer({Key? key}) : super(key: key);

  @override
  _ConfirmTransferState createState() => _ConfirmTransferState();
}

class _ConfirmTransferState extends State<ConfirmTransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: HexColor('#0F46B3'),
        elevation: 0.0,
        title: Text('Confirm Transfer',style: TextStyle(fontWeight: FontWeight.bold,
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
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [

                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: CircleAvatar(
                    radius: 35,
                    child: ClipOval(
                      child: Image(
                        image: AssetImage('assets/payment/profilepic.jpg'),
                        fit: BoxFit.cover,
                        height: 70,
                        width: 70,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Manikandan',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    '5170-7867-4563',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Transfer on Nov,10',
                    style: TextStyle(fontSize: 14, color: Colors.yellow),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    '\$90.00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white),
                  ),
                ),
                Container(
                color: Color(0xFF0E3311).withOpacity(0.1),
                  height: 50,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.error_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Transfer made to bank account could take a few minutes',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                )
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
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                height: MediaQuery.of(context).size.height / 4.50,
                width: MediaQuery.of(context).size.width,
                child: Column(children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 1.15,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TransferAmountSuccess()),
                          );
                        },
                        color: HexColor('#0F46B3'),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        child: Text(
                          "Transfer Money",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ])),
          )
        ],
      ),
    );
  }
}

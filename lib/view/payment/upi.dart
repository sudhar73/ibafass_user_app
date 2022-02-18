import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class UPI extends StatefulWidget {
  const UPI({Key? key}) : super(key: key);

  @override
  _UPIState createState() => _UPIState();
}

class _UPIState extends State<UPI> {
  @override
  Widget build(BuildContext context) {
    final myheight=MediaQuery.of(context).size.height;
    final mywidth= MediaQuery.of(context).size.width;
    return Container(
      height:myheight/1.4,
      decoration: BoxDecoration( color: Colors.white,
        borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text('UPI',style: TextStyle(fontWeight: FontWeight.bold,fontSize:26 ,color: HexColor('#0F46B3')),),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              height: 2,
              width: 50,
              color: HexColor('#0F46B3'),
            ),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: myheight/7,
                width: mywidth/4,
                decoration: BoxDecoration( boxShadow: [BoxShadow(
                  offset: Offset(0,3.0),
                  blurRadius: 6,
                  color: Colors.grey,
                )],
                    color: HexColor('C6F9DE'),borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Image(
                  image: AssetImage('assets/payment/gpay.png'), height: 50,
                  width: 50 ,
                ),
              ),
              Container(
                height: myheight/7,
                width: mywidth/4,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    offset: Offset(0,3.0),
                    blurRadius: 6,
                    color: Colors.grey,
                  )],
                    color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Image(
                  image: AssetImage('assets/payment/paytm.png'),
                ),
              ),
              Container(
                height: myheight/7,
                width: mywidth/4,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      offset: Offset(0,3.0),
                      blurRadius: 6,
                      color: Colors.grey,
                    )],
                    color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Image(
                  image: AssetImage('assets/payment/phnpe.png'), height: 50,
                  width: 50,
                ),
              ),

            ],
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text('Enter Your UPI Address',style: TextStyle(color: Colors.black,fontSize: 15,),),
          ),
          SizedBox(height: 10,),
          Center(
            child: Container(
              height: 60,
              width: mywidth/1.15,
              decoration: BoxDecoration(
                  color:Colors.white,boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(

                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                ),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 1.15,
                child: RaisedButton(
                  onPressed: () {

                  },
                  color: HexColor('#0F46B3'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    "Verify & Pay",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}

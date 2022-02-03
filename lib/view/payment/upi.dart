import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class UPI extends StatefulWidget {
  const UPI({Key? key}) : super(key: key);

  @override
  _UPIState createState() => _UPIState();
}

class _UPIState extends State<UPI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#0F46B3'),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: HexColor('#0F46B3'),
          title: Text('Transfer Money',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          centerTitle: true,
          leading: Icon(Icons.arrow_back,color: Colors.white,),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,)),
          ],
        ),
      ),
    );
  }
}

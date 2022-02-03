import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class Expenses extends StatefulWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  _ExpensesState createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:HexColor('#0F46B3'),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: HexColor('#0F46B3'),
          title: Text('Expenses',style: TextStyle(color: Colors.white),),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.white,
              borderRadius:BorderRadius.only(topRight: Radius.circular(25.0),topLeft:Radius.circular(25.0))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Name:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 60,
                  width: mywidth/1.10,
                  decoration: BoxDecoration(color:Colors.white,boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
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
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Category:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 60,
                  width: mywidth/1.10,
                  decoration: BoxDecoration(
                      color:Colors.white,boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.arrow_drop_down,color: Colors.black,)),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Amount:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 60,
                  width: mywidth/1.10,
                  decoration: BoxDecoration(color:Colors.white,boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
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
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Date:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 60,
                  width: mywidth/1.10,
                  decoration: BoxDecoration(color:Colors.white,boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.calendar_today,color: Colors.black,)),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Payment Mode:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 60,
                  width: mywidth/1.10,
                  decoration: BoxDecoration(color:Colors.white,boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.arrow_drop_down,color: Colors.black,)),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Payer:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 60,
                  width: mywidth/1.10,
                  decoration: BoxDecoration(color:Colors.white,boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.arrow_drop_down,color: Colors.black,)),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Reference Number:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 60,
                  width: mywidth/1.10,
                  decoration: BoxDecoration(color:Colors.white,boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Reason:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 150,
                  width: mywidth/1.10,
                  decoration: BoxDecoration(color:Colors.white,boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      maxLines: 4,
                      decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Reference Number:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 60,
                  width: mywidth/1.10,
                  decoration: BoxDecoration(color:Colors.white,boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child:  Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(
                            height: 40,
                            width: 120,

                            decoration: BoxDecoration(color:HexColor('#DBDBDB'),
                                border: Border.all(color: HexColor('#939393'),width: 1.0,),
                                borderRadius: BorderRadius.all(Radius.circular(7.0))),
                            child: Center(child: Text('Choose File',style: TextStyle(color: Colors.black,fontSize: 14),)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text('Image size is 100px * 50px',style: TextStyle(fontSize: 14,color: Colors.black),),
                ),
              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width /3,
                    child: RaisedButton(
                      onPressed: () {

                      },
                      color: HexColor('#F2F2F2'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Text(
                        "Cancel",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width /3,
                    child: RaisedButton(
                      onPressed: () {

                      },
                      color: HexColor('#0F46B3'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Text(
                        "Add",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Center(
                child: Text(
                  "Print",
                  style: TextStyle(fontSize: 13, fontWeight:FontWeight.bold,color: HexColor('#0F46B3')),
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: Text(
                  "Download",
                  style: TextStyle(fontSize: 13, fontWeight:FontWeight.bold,color:HexColor('#0F46B3')),
                ),
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}

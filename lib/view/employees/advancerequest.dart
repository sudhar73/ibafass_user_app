import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class AdvanceRequest extends StatefulWidget {
  const AdvanceRequest({Key? key}) : super(key: key);

  @override
  _AdvanceRequestState createState() => _AdvanceRequestState();
}

class _AdvanceRequestState extends State<AdvanceRequest> {
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
          title: Text('Advance Request',style: TextStyle(color: Colors.white),),
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
              icon:
          Icon(  Icons.arrow_back,
            color: Colors.white,)
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

        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/0.75,
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius:BorderRadius.only(topRight: Radius.circular(25.0),topLeft:Radius.circular(25.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('Employee Name:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
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
                      decoration: BoxDecoration(
                          color:Colors.white,boxShadow:[BoxShadow(blurRadius: 4,offset: Offset(0,2.0),color: Colors.grey)],
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
                    child: Text('Deduction:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
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
                    child: Text('EMI:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 18,fontWeight: FontWeight.bold),),
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
                  SizedBox(height: 30,),
                  Center(
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 1.15,
                      child: RaisedButton(
                        onPressed: () {

                        },
                        color: HexColor('#0F46B3'),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Text(
                          "Request Access",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



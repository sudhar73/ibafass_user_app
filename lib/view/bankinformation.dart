import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class BankInformation extends StatefulWidget {
  const BankInformation({Key? key}) : super(key: key);

  @override
  _BankInformationState createState() => _BankInformationState();
}

class _BankInformationState extends State<BankInformation> {
  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: HexColor('#DCF4F9'),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            leading: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
                size: 25,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0,right: 20.0),
                child: Icon(Icons.notifications,color: Colors.black,size: 25,),
              ),
              InkWell(
                onTap: () {
                  print("Inside the Image");
                },
                child:Padding(
                  padding: const EdgeInsets.only(right: 20.0,top: 10.0),
                  child: CircleAvatar(
                    radius: 25,
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
              ),
            ]
        ),
      ),
      body: Column(
        children: [
          Container(
            height:myheight/8,
            width: mywidth,
            color: HexColor('#0F46B3'),
            child: Center(
              child: Text('Bank Information',
                style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
            )),
          Container(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  height: myheight/1.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color:HexColor('#0F46B3'),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20))),
                        height: myheight / 11,
                        width: mywidth,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Bank Details :",
                                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white), ),
                          ),
                        ),

                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Container(
                          height: myheight / 3.5,
                          decoration: BoxDecoration(
                              boxShadow: [BoxShadow(
                                  offset: Offset(0,3.0),color: Colors.grey,blurRadius: 4
                              )],
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 20.0,top: 20.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Bank Name :",style: TextStyle(color: Colors.grey),),
                                      SizedBox(height: myheight/40,),
                                      Text("Account Number :",style: TextStyle(color: Colors.grey),),
                                      SizedBox(height: myheight/40,),
                                      Text("IFSC Code :",style: TextStyle(color: Colors.grey),),
                                      SizedBox(height: myheight/40,),
                                      Text("Branch Name :",style: TextStyle(color: Colors.grey),),
                                      SizedBox(height: myheight/40,),
                                      Text("PAN Number :",style: TextStyle(color: Colors.grey),),
                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(left: 20.0,top: 20.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("ICICI",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                      SizedBox(height: myheight/40,),
                                      Text("100523456789",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                      SizedBox(height: myheight/40,),
                                      Text("ICICI0097367",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                      SizedBox(height: myheight/40,),
                                      Text("Teynampet",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                      SizedBox(height: myheight/40,),
                                      Text("TCO89012",
                                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),

                                    ],
                                  )),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(height:10 ,),
                      Text('Note:',style: TextStyle(color: HexColor('#0F46B3'),fontSize: 12),),
                      SizedBox(height:10 ,),
                      Container(
                        width: mywidth/1.5,
                        child:Text('If you want to edit your bank details, you need to request access.',
                            style: TextStyle(color:Colors.black,fontSize: 12),),
                      ),
                      SizedBox(height:20 ,),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 2.7,
                        child: RaisedButton(
                          onPressed: () {
                          },
                          color: HexColor('D8E4FE'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Request Access",
                            style: TextStyle(fontSize:13,fontWeight: FontWeight.bold, color:HexColor('#0F46B3')),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

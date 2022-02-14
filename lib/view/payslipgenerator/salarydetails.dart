import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class SalaryDetails extends StatefulWidget {
  const SalaryDetails({Key? key}) : super(key: key);

  @override
  _SalaryDetailsState createState() => _SalaryDetailsState();
}

class _SalaryDetailsState extends State<SalaryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#F0F4FD'),
      appBar:AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text('Salary Details',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
            icon: Icon(Icons.arrow_back,color: Colors.black,)),
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.settings_outlined,color: Colors.black,)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(40.0),bottomLeft: Radius.circular(40.0)),
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                        child: CircleAvatar(
                            radius: 35,
                            child:ClipOval(
                              child: Image(
                                image: AssetImage('assets/directory/profilepicture.jpg'),
                                height: 70,
                                width: 70,
                              ),
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Welcome Mani',
                              style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: HexColor('#0F46B3')),),
                            SizedBox(height: 5,),
                            Text('Good Morning',style: TextStyle(fontSize: 14,color: Colors.black),)
                          ],
                        ),
                      )
                    ],

                  )

                ],
              ),

            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    decoration: BoxDecoration( color: HexColor('#FC5127'),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width/3,
                    child: Column(crossAxisAlignment:CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,children: [
                      Text('Gross',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 15),),
                      Text('₹23,500',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 25),),
                    ],),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0,),
                  child: Container(
                    decoration: BoxDecoration( color: HexColor('#019110'),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width/3,
                    child: Column(crossAxisAlignment:CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,children: [
                      Text('Net',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 15),),
                      Text('₹25,500',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 25),),
                    ],),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(

              width: MediaQuery.of(context).size.width/1.10,

              decoration: BoxDecoration( color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15)
                )
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Align(alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Earnings',style: TextStyle(color: HexColor('#FC5127'),fontSize: 18,fontWeight: FontWeight.bold)),
                      )),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Basic Salary',style: TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('21,000',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 21,color: Colors.black),),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Allowance',style: TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('1,000',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 21,color: Colors.black),),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Conveyance',style: TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('1,000',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 21,color: Colors.black),),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Medical Allowance',style: TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('1,000',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 21,color: Colors.black),),
                      ),
                      SizedBox(height: 10.0,),


                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Other Allowance',style: TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('1,000',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 21,color: Colors.black),),
                      ),
                    ],
                  ),

                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                   child: Divider(
                     thickness: 1,
                     color: Colors.grey,
                   ),
                 ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Total Earnings',style: TextStyle(fontSize: 18,color:HexColor('#FC5127')),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('25,000',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 21,color: HexColor('#FC5127')),),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: MediaQuery.of(context).size.width/1.10,
              decoration: BoxDecoration( color: Colors.white,
                  borderRadius: BorderRadius.all(
                      Radius.circular(15)
                  )
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Align(alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Deductions',style: TextStyle(color: HexColor('#019110'),fontSize: 18,fontWeight: FontWeight.bold)),
                      )),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Tax',style: TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('0',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 21,color: Colors.black),),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Provident Fund',style: TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('1,000',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 21,color: Colors.black),),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('ESI',style: TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('500',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 21,color: Colors.black),),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Leave',style: TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('0',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 21,color: Colors.black),),
                      ),
                      SizedBox(height: 10.0,),


                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Other Deductions',style: TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('0',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 21,color: Colors.black),),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Total Deduction',style: TextStyle(fontSize: 18,color:HexColor('#019110')),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('1,500',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 21,color: HexColor('#019110')),),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width/1.40,
              child: RaisedButton(onPressed: () {  },
                color: HexColor('#0F46B3'),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Payslip PDF',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white,fontSize: 18),),
                    SizedBox(width: 10,),
                    Icon(Icons.download,color: Colors.white,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}

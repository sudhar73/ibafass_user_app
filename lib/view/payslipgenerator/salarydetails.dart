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
      body: SingleChildScrollView(

        child: Column(
          children: [
            Container(
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(40.0),bottomLeft: Radius.circular(40.0)),
              ),
              height: MediaQuery.of(context).size.height/3.5,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 40,),
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
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Center(
                            child: Text(
                              'Salary Details',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.settings,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:10),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Welcome Mani',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: HexColor('#0F46B3')),),
                          Text('Good Morning',style: TextStyle(fontSize: 14,color: Colors.black),)
                        ],
                      )
                    ],

                  )

                ],
              ),

            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    decoration: BoxDecoration( color: HexColor('#FC5127'),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/2.5,
                    child: Column(crossAxisAlignment:CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,children: [
                      Text('Gross',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 15),),
                      Text('23,500',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 25),),
                    ],),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0,),
                  child: Container(
                    decoration: BoxDecoration( color: HexColor('#019110'),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/2.5,
                    child: Column(crossAxisAlignment:CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,children: [
                      Text('Net',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 15),),
                      Text('25,500',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 25),),
                    ],),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height/2.5,
              width: MediaQuery.of(context).size.width/1.10,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Align(alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Earnings',style: TextStyle(color: HexColor('#FC5127'),fontSize: 18,fontWeight: FontWeight.bold)),
                      )),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Basic Salary',style: TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('21,000',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.black),),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Allowance',style: TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('1,000',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.black),),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Conveyance',style: TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('1,000',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.black),),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Medical Allowance',style: TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('1,000',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.black),),
                      ),
                      SizedBox(height: 10.0,),


                    ],
                  ),
                  SizedBox(
                    height: 10.0,
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
                        child: Text('1,000',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.black),),
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
                        child: Text('Total Earnings',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color:HexColor('#FC5127')),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('25,000',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: HexColor('#FC5127')),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: MediaQuery.of(context).size.height/2.5,
              width: MediaQuery.of(context).size.width/1.10,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Align(alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Deductions',style: TextStyle(color: HexColor('#019110'),fontSize: 18,fontWeight: FontWeight.bold)),
                      )),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Tax',style: TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('0',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.black),),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Provident Fund',style: TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('1,000',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.black),),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('ESI',style: TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('500',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.black),),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Leave',style: TextStyle(fontSize: 18,color: Colors.black),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('0',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.black),),
                      ),
                      SizedBox(height: 10.0,),


                    ],
                  ),
                  SizedBox(
                    height: 10.0,
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
                        child: Text('0',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.black),),
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
                        child: Text('Total Deduction',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color:HexColor('#019110')),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('1,500',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: HexColor('#019110')),),
                      ),
                    ],
                  ),
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
                    Text('PaySlip PDF',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white,fontSize: 18),),
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

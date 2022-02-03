import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hexcolor/hexcolor.dart';


class ExpensesApproval extends StatefulWidget {
  const ExpensesApproval({Key? key}) : super(key: key);

  @override
  _ExpensesApprovalState createState() => _ExpensesApprovalState();
}

class _ExpensesApprovalState extends State<ExpensesApproval> {
  bool Selected=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#0F46B3'),
      appBar: AppBar(
        backgroundColor: HexColor('#0F46B3'),
        elevation: 0.0,
        title: Text('Approval Setttings',style: TextStyle(
            color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),topRight: Radius.circular(40.0))),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(color: HexColor('#DCF4F9'),borderRadius: BorderRadius.all(Radius.circular(40.0))),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       SizedBox(height: MediaQuery.of(context).size.height/18,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Container(
                             height: MediaQuery.of(context).size.height/5,
                             width: MediaQuery.of(context).size.width/3,
                             decoration: BoxDecoration(
                                 boxShadow: [BoxShadow(offset: Offset(0,3.0),blurRadius: 6,color: Colors.grey)],
                                 color: HexColor('#0F46B3'),
                                 borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Image(image: AssetImage('assets/settings/expensesapproval.png')),
                                    SizedBox(height: 10,),
                                    Text('Expenses Approval',style:
                                    TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 12),),
                                  ])
                           ),
                           Container(
                             height: MediaQuery.of(context).size.height/5,
                             width: MediaQuery.of(context).size.width/3,
                             decoration: BoxDecoration(
                                 boxShadow: [BoxShadow(offset: Offset(0,3.0),blurRadius: 6,color: Colors.grey)],
                                 color: Colors.white,
                                 borderRadius: BorderRadius.all(Radius.circular(20.0))),
                             child:  Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [Image(image: AssetImage('assets/settings/leaveapproval.png')),
                                   SizedBox(height: 10,),
                                   Text('Leave Approval',style:
                                   TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 12),),
                                 ]),
                           )
                         ],
                       ),
                       SizedBox(height: MediaQuery.of(context).size.height/20,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Container(
                             height: MediaQuery.of(context).size.height/5,
                             width: MediaQuery.of(context).size.width/3,
                             decoration: BoxDecoration(
                               boxShadow: [BoxShadow(offset: Offset(0,3.0),blurRadius: 6,color: Colors.grey)],
                                 color: Colors.white,
                                 borderRadius: BorderRadius.all(Radius.circular(20.0))),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Image(image: AssetImage('assets/settings/offerapproval.png')),
                                 SizedBox(height: 10,),
                                 Text('Offer Approval',style:
                                 TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 12),),

                               ],
                             ),
                           ),
                           Container(
                             height: MediaQuery.of(context).size.height/5,
                             width: MediaQuery.of(context).size.width/3,
                             decoration: BoxDecoration(
                                 boxShadow: [BoxShadow(offset: Offset(0,3.0),blurRadius: 6,color: Colors.grey)],
                                 color: Colors.white,
                                 borderRadius: BorderRadius.all(Radius.circular(20.0))),
                             child:  Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [Image(image: AssetImage('assets/settings/resignationnotice.png')),
                                   SizedBox(height: 10,),
                                   Text('Resignation Approval',style:
                                   TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 12),),
                                 ]),

                           ),
                         ],
                       ),
                       SizedBox(height: 20,),
                       Padding(
                         padding: const EdgeInsets.only(left: 20.0),
                         child: Text('Expenses Approval Settings',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                         child: Divider(
                           color: Colors.grey,
                           thickness: 1,
                         ),
                       ),
                       SizedBox(height: 10,),
                       Center(
                         child: Container(
                           height: MediaQuery.of(context).size.height/1.8,
                           width: MediaQuery.of(context).size.width/1.10,
                           decoration: BoxDecoration(
                               boxShadow: [BoxShadow(offset: Offset(0,3.0),blurRadius: 6,color: Colors.grey)],
                               color: Colors.white,
                               borderRadius: BorderRadius.all(Radius.circular(20.0))),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(height: 20,),
                               Padding(
                                 padding: const EdgeInsets.only(left: 20.0),
                                 child: Text('Expense Approver',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15,color: Colors.black),),
                               ),
                               SizedBox(height: 20,),
                               Padding(
                                 padding: const EdgeInsets.only(left: 20.0),
                                 child: Text('Aprover 1',style: TextStyle(fontSize: 14,color: Colors.grey),),
                               ),
                               SizedBox(height: 10,),
                               Row(
                                 mainAxisAlignment:MainAxisAlignment.center,
                                 children: [
                                   Container(
                                     width: MediaQuery.of(context).size.width/1.5,
                                     child: TextFormField(
                                       decoration: InputDecoration(
                                         suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.arrow_drop_down,color: Colors.grey,)),
                                         enabledBorder: OutlineInputBorder(
                                             borderRadius: BorderRadius.all(
                                                 Radius.circular(10.0)),
                                             borderSide: BorderSide(color: Colors.grey)),
                                         focusedBorder: OutlineInputBorder(
                                             borderRadius: BorderRadius.all(
                                                 Radius.circular(10.0)),
                                             borderSide: BorderSide(color: Colors.grey)),
                                       ),
                                     ),
                                   ),
                                   SizedBox(width: 10,),
                                   GFCheckbox(
                                     type: GFCheckboxType.circle,
                                     activeBgColor: Colors.green,
                                     inactiveBgColor: Colors.white,
                                     onChanged: (val)=>setState(() {
                                       this.Selected=!this.Selected;
                                   }), value: Selected,),
                                 ],
                               ),
                               SizedBox(height: 20,),
                               Padding(
                                 padding: const EdgeInsets.only(left: 20.0),
                                 child: Text('Approver 2',style: TextStyle(fontSize: 14,color: Colors.grey),),
                               ),
                               SizedBox(height: 10,),
                               Row(
                                 mainAxisAlignment:MainAxisAlignment.center,
                                 children: [
                                   Container(
                                     width: MediaQuery.of(context).size.width/1.5,
                                     child: TextFormField(
                                       decoration: InputDecoration(
                                         suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.arrow_drop_down,color: Colors.grey,)),
                                         enabledBorder: OutlineInputBorder(
                                             borderRadius: BorderRadius.all(
                                                 Radius.circular(10.0)),
                                             borderSide: BorderSide(color: Colors.grey)),
                                         focusedBorder: OutlineInputBorder(
                                             borderRadius: BorderRadius.all(
                                                 Radius.circular(10.0)),
                                             borderSide: BorderSide(color: Colors.grey)),
                                       ),
                                     ),
                                   ),
                                   SizedBox(width: 10,),
                                   GFCheckbox(
                                     type: GFCheckboxType.circle,
                                     activeBgColor: Colors.green,
                                     inactiveBgColor: Colors.white,
                                     onChanged: (val)=>setState(() {
                                       this.Selected=!this.Selected;
                                     }), value: Selected,),
                                 ],
                               ),
                               SizedBox(height: 20,),
                               Padding(
                                 padding: const EdgeInsets.only(left: 20.0),
                                 child: Text('Approver 3',style: TextStyle(fontSize: 14,color: Colors.grey),),
                               ),
                               SizedBox(height: 10,),
                               Row(
                                 mainAxisAlignment:MainAxisAlignment.center,
                                 children: [
                                   Container(
                                     width: MediaQuery.of(context).size.width/1.5,
                                     child: TextFormField(
                                       decoration: InputDecoration(
                                         suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.arrow_drop_down,color: Colors.grey,)),
                                         enabledBorder: OutlineInputBorder(
                                             borderRadius: BorderRadius.all(
                                                 Radius.circular(10.0)),
                                             borderSide: BorderSide(color: Colors.grey)),
                                         focusedBorder: OutlineInputBorder(
                                             borderRadius: BorderRadius.all(
                                                 Radius.circular(10.0)),
                                             borderSide: BorderSide(color: Colors.grey)),
                                       ),
                                     ),
                                   ),
                                   SizedBox(width: 10,),
                                   GFCheckbox(
                                     type: GFCheckboxType.circle,
                                     activeBgColor: Colors.green,
                                     inactiveBgColor: Colors.white,
                                     onChanged: (val)=>setState(() {
                                       this.Selected=!this.Selected;
                                     }), value: Selected,),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       ),
                       SizedBox(height: 20,),
                     ],
                   ),

                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 1.15,
                    child: RaisedButton(
                      onPressed: () {
                      },
                      color: HexColor('#0F46B3'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        "Save",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                ],

              ),
            ),
          ],
        ),
      ),

    );
  }
}

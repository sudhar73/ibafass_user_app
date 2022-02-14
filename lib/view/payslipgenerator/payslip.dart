import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ibafass/view/payslipgenerator/payroll.dart';
import 'package:ibafass/view/payslipgenerator/salarydetails.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PaySlip extends StatefulWidget {
  const PaySlip({Key? key}) : super(key: key);

  @override
  _PaySlipState createState() => _PaySlipState();
}

class _PaySlipState extends State<PaySlip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#F0F4FD'),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Payslip',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0)),
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(

                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20,right: 20,bottom: 20,),
                        child: CircleAvatar(
                            radius: 35,
                            child: ClipOval(
                              child: Image(
                                image: AssetImage(
                                    'assets/directory/profilepicture.jpg'),
                                height: 70,
                                width: 70,
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Mani',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: HexColor('#0F46B3')),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Good Morning',
                              style: TextStyle(fontSize: 14, color: Colors.black),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 4.0),
                    blurRadius: 3,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              width: MediaQuery.of(context).size.width / 1.10,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20.0,
                          left: 20.0,
                        ),
                        child: Text(
                          'Pay Period :',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          ' 01 Mar 2021-10 Mar 2021',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: HexColor('#2A9FDB'),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: CircularPercentIndicator(
                                radius: 70.0,
                                backgroundColor: HexColor('FFF700'),
                                progressColor: HexColor('FF8C41'),
                                lineWidth: 15.0,
                                percent: 0.3,
                                circularStrokeCap: CircularStrokeCap.round,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'NET PAY',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                    Text(
                                      '₹ 25,000',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 28,
                                          color: HexColor('FFF700')),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'DEDUCTIONS',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white),
                                    ),
                                    Text(
                                      '₹ 1,500',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 28,
                                          color: HexColor('FF8C41')),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20.0,bottom: 10
                          ),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("TOTAL GROSS PAY",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        color: Colors.white)),
                                Spacer(),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Text("₹ 23,500",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 28,
                                          color: HexColor('FFF700'))),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Pay for Mar 2021",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black)),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Paid Days 31",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black)),
                            ],
                          ),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                                color: HexColor('#6EEDFC'),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0))),
                            height: 30,
                            width: 70,
                            child: Center(
                                child: Text("View",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black))),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SalaryDetails()),
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width / 3.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(
                                'assets/payslipgenerator/salarydetails.png'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Salary Details",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black))
                        ],
                      )),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Payroll()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.width / 3.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image:
                              AssetImage('assets/payslipgenerator/payroll.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Payroll",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

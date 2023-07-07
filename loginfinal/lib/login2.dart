import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginfinal/login1.dart';

class login2 extends StatelessWidget{

  login2({required this.email,super.key});

  String email;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
            children: [
              Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFF1A237E),Color(0xFF3F51B5), Color(0xFF1A237E)]
                      )
                  )
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Container(
                    margin: EdgeInsets.all(27),
                    child:Row(
                      children: [
                        GestureDetector(
                          child:  Icon(Icons.arrow_back,color: Colors.white,size: 40,),
                          onTap: (){
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => login()));
                          },
                        ),
                      ],
                    )
                ),
              ),

              Align(
                  child: ListView(
                    padding: EdgeInsets.fromLTRB(293, 20, 15, 700),
                    children: [
                      CircleAvatar(
                        backgroundImage:  AssetImage('assets/NMTT....jpg'),
                        radius: 30,
                      )
                    ],
                  )
              ),
              Align(
                child: Container(
                  margin: EdgeInsets.fromLTRB(26, 167, 32, 422),
                  width: 317,
                  height: 232,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.purpleAccent,Colors.purple]
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(31, 25, 205, 181),
                        child: const Text('SuperBank',
                          style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Montserrat',fontWeight: FontWeight.w400),),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(296.22, 205, 53, 572.01),
                child: const Column(
                  children: [
                    Image(image: AssetImage('assets/wave.png'),width: 34.99,height: 25.78,)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(57, 289, 100, 490),
                child:const Text('0987 6543 2100 0000',
                  style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Montserrat',),),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(57, 347, 287, 448),
                child: const Text('11/16',
                  style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Montserrat',fontWeight: FontWeight.w300),),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(27, 422, 245, 346),

                child: Text('Balance',
                  style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'Montserrat',fontWeight: FontWeight.w500),),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(26, 440, 245, 346),
                  child: const Row(
                    children: [
                      Text('\$5,644.00',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Montserrat',),)
                    ],
                  )
              ),
              Container(
                padding: EdgeInsets.fromLTRB(289, 338, 53, 448),
                child: const Column(
                  children: [
                    Image(image: AssetImage('assets/mastercard.png'),width: 34.99,height: 25.78,)
                  ],
                ),
              ),
              Align(
                alignment: Alignment(0.8,0.17),
                child: Container(
                  height: 120,
                  width: 120,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 42,
                                width: 42,
                                padding: EdgeInsets.all(9.7),
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFF1C0E5B),
                                    border: Border.all(color: Color(0xFF7783DC))
                                ),
                                child:const Row(
                                  children: [
                                    Icon(Icons.history,color: Colors.white,size :20.5),
                                  ],
                                ),
                              ),
                              Text('History',
                                style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Montserrat',fontWeight: FontWeight.w300),),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 42,
                                width: 42,
                                padding: EdgeInsets.all(9.7),
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFF1C0E5B),
                                    border: Border.all(color: Color(0xFF7783DC))
                                ),
                                child:const Row(
                                  children: [
                                    Icon(Icons.send,color: Colors.white,size :20.5)
                                  ],
                                ),
                              ),
                              Text('Send',
                                style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Montserrat',fontWeight: FontWeight.w300),),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.bottomStart,
                child:  Container(
                    width: 420,
                    height: 316,
                    decoration: BoxDecoration(
                        color: Color(0xFF1C0E5B),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(23.95),
                          width: 85.93,
                          height: 3,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),

                        Container(
                          height: 195,
                          width: 420,
                          child: SingleChildScrollView(
                            child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 49,
                                  height: 16,
                                  margin: EdgeInsets.all(34),
                                  child: Text('Today',
                                    style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Montserrat',fontWeight: FontWeight.w600),),
                                ),
                                Container(
                                  width: 420,
                                  height: 44,
                                  margin: EdgeInsets.only(left: 23,bottom: 21,right: 30),
                                  child:const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:  AssetImage('assets/send.png'),
                                        radius: 22,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Direct Transfer', style: TextStyle(
                                              color: Colors.white, fontSize: 15.5, fontWeight: FontWeight.w500
                                          )),
                                          Text('Julian', style: TextStyle(
                                              color: Colors.white, fontSize: 13
                                          )),
                                        ],
                                      ),
                                      Text('-\$125.00', style: TextStyle(
                                          color: Colors.white, fontSize: 14
                                      )
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 420,
                                  height: 44,
                                  margin: EdgeInsets.only(left: 23,bottom: 21,right: 30),
                                  child:const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:  AssetImage('assets/netflix.png'),
                                        radius: 22,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Netflix',textAlign: TextAlign.left, style: TextStyle(
                                              color: Colors.white, fontSize: 15.5, fontWeight: FontWeight.w500
                                          )),
                                          Text('Online',textAlign: TextAlign.left, style: TextStyle(
                                              color: Colors.white, fontSize: 13
                                          )),
                                        ],
                                      ),
                                      Text('-\$55.00', style: TextStyle(
                                          color: Colors.white, fontSize: 14
                                      )
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 420,
                                  height: 44,
                                  margin: EdgeInsets.only(left: 23,bottom: 21,right: 30),
                                  child:const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:  AssetImage('assets/shopping.png'),
                                        radius: 22,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Zara Shopping', style: TextStyle(
                                              color: Colors.white, fontSize: 15.5, fontWeight: FontWeight.w500
                                          )),
                                          Text('Online', style: TextStyle(
                                              color: Colors.white, fontSize: 13
                                          )),
                                        ],
                                      ),
                                      Text('-\$327.00', style: TextStyle(
                                          color: Colors.white, fontSize: 14
                                      )
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                ),
              )
            ]
        )
    );
  }
}
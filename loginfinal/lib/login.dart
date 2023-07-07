import 'package:flutter/material.dart';
import 'package:loginfinal/login1.dart';
import 'package:loginfinal/login2.dart';
import 'package:fluttertoast/fluttertoast.dart';



class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String _validateEmail = '';
  String _validatePassword = '';

  void _login() {
    String email = emailController.text;
    String password = passwordController.text;
    if (email.isEmpty) {
      setState(() {
        _validateEmail = 'Nhap ten Email';
      });
    }

    if (password.isEmpty) {
      setState(() {
        _validatePassword = 'Nhap Password';
      });
    }

    if (email.isNotEmpty && password.isNotEmpty) {
      setState(() {
        _validateEmail = '';
        _validatePassword = '';
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => login2(email: email,)));
      });
    }
  }

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
                      colors: [
                        Color(0xFF1A237E),
                        Color(0xFF3F51B5),
                        Color(0xFF1A237E)
                      ]
                  )
              ),
            ),
            Align(
                alignment: Alignment(0, -0.4),
                child: ListView(
                  padding: EdgeInsets.all(100),
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/NMTT....jpg'),
                      radius: 60,
                    )
                  ],
                )
            ),
            Align(
              alignment: Alignment(0, -0.1),
              child: Container(
                height: 200,
                width: 400,
                child: Column(
                  children: [
                    Container(
                      child: const Text('Welcome again, NMTThinh^^',
                        style: TextStyle(color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w600),),
                    ),
                    Container(
                      padding: EdgeInsets.all(14),
                      child: const Column(
                        children: [
                          Text('Please Log into your\naccount',
                            style: TextStyle(color: Colors.white,
                                fontSize: 13,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w300),
                            textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Align(
              alignment: Alignment(0, 0.45),
              child: Container(
                width: 245,
                height: 54,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.purpleAccent, Colors.purple]
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () => _login(),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      child: const Text('Login'),
                    ),
                    TextButton(
                      onPressed: () {
                        Fluttertoast.showToast(
                            msg: 'Click Success!',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.TOP,
                            timeInSecForIosWeb: 2,
                            backgroundColor: Colors.green,
                            textColor: Colors.black,
                            fontSize: 15);
                      },
                      style:
                      TextButton.styleFrom(minimumSize: const Size(5, 5)),
                      child: const Text('Click Here',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w700)),
                    ),
                  ],

                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.65),
              child: Container(
                width: 200,
                height: 100,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextButton(onPressed: () {}, child: const Column(
                      children: [
                        Text('For got your password',
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 13,
                                fontFamily: 'Lato')),
                        Text('Click Here', style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            fontFamily: 'Lato')),
                      ],
                    )
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.4),
              child: Container(
                width: 400,
                height: 300,
                child: Column(
                  children: [
                    Container(
                      height: 54,
                      width: 245,
                      margin: EdgeInsets.all(23),
                      child:  TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                            labelText: 'Your Email',
                            hintText: 'Enter Your Email',
                            labelStyle: const TextStyle(color: Colors.white),
                            contentPadding: const EdgeInsets.fromLTRB(40, 20, 0, 20),
                            border: const OutlineInputBorder(),
                            enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(50)),
                                borderSide:
                                BorderSide(color: Colors.white, width: 2)),
                            errorText: _validateEmail != '' ? _validateEmail : null
                        ),
                      ),
                    ),
                    Container(
                      height: 54,
                      width: 245,

                      child:  TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                            labelText: 'Your Password',
                            hintText: 'Enter Your Password',
                            labelStyle: const TextStyle(color: Colors.white),
                            contentPadding: const EdgeInsets.fromLTRB(40, 20, 0, 20),
                            border: const OutlineInputBorder(),
                            enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(50)),
                                borderSide:
                                BorderSide(color: Colors.white, width: 2)),
                            errorText: _validateEmail != '' ? _validateEmail : null
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}
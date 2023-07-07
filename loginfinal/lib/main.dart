import 'package:flutter/material.dart';
import 'package:loginfinal/login.dart';

void main() {
  runApp(MaterialApp(builder: (context, child) => Material(child: child),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: login(),
    );
  }
}

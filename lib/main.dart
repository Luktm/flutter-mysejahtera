import 'package:flutter/material.dart';
import 'package:mysejahtera_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MySejahtera',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          
        )
      ),
      home: HomeScreen(),
      routes: {
        
      },
    );
  }
}


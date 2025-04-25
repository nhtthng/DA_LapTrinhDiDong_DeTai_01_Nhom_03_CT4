import 'package:da_laptrinhdidongdetai_01/Screen/Home.dart';
import 'package:da_laptrinhdidongdetai_01/Screen/Login.dart';
import 'package:da_laptrinhdidongdetai_01/Screen/Register.dart';
import 'package:da_laptrinhdidongdetai_01/Screen/UpdateInformation.dart';
import 'package:da_laptrinhdidongdetai_01/Screen/personal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const UpdateInformation(),
    );
  }
}


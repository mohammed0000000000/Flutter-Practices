import 'package:flutter/material.dart';
import 'package:flutter00/BMI_Calculator/Screens/bmiScreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bmiscreen()
    );
  }
}

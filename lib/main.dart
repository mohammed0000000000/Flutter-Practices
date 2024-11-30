import 'package:flutter/material.dart';
import 'package:flutter00/tasks/countScore.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState()  => AppState();

}
class AppState extends State<MyApp>{
  int counter1 = 0, counter2 = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task 1",
      debugShowCheckedModeBanner: false,
      home: ScoreScreen(),
    );
  }
}
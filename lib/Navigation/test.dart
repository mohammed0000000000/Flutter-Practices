import 'package:flutter/material.dart';
import 'package:flutter00/tasks/countScore.dart';
import 'package:flutter00/tasks/summationForm.dart';

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
      routes: {
        "/": (context) => HomeScreen(),
        "/products":(context) => ProductScreen(),
      },
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("Home page"),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "/products");
              }, child: Text("Go to Products"))
            ],
          ),
        ),
      ),
    );
  }
}
class ProductScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("Products Page"),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Navigate"))
            ],
          ),
        ),
      ),
    );
  }
}
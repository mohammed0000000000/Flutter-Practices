import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SummationScreen extends StatefulWidget {
  const SummationScreen({super.key});

  @override
  State<SummationScreen> createState() => _SummationScreenState();
}

class _SummationScreenState extends State<SummationScreen> {
  final _formKey = GlobalKey<FormState>();
  int value1 = 0,
      value2 = 0,
      result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculate Page"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        child: Form(
            key: _formKey,
            child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "First Number",
                  hintText: "Enter Number",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return "You must enter number";
                },
                onChanged: (value) {
                  setState(() {
                    value1 = int.parse(value);
                  });
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Second Number",
                  hintText: "Enter Number",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return "You must enter number";
                },
                onChanged: (value) {
                  setState(() {
                    value2 = int.parse(value);
                  });
                },
              ),
              SizedBox(height: 15,),
              Text("Result : ${result}", style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(onPressed: (){
                      if(_formKey.currentState!.validate()){
                        print("Herereeeeeeeeeeeeee");
                        setState(() {
                          result = value1 + value2;
                        });
                      }
                    }, child: Text("ADD")),
                  ),
                  Expanded(
                    child: ElevatedButton(onPressed: (){
                      if(_formKey.currentState!.validate()){
                        setState(() {
                          result = value1 - value2;
                        });
                      }
                    }, child: Text("Subtract")),
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}

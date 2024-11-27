import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bmiscreen extends StatelessWidget {
  const Bmiscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: const Text("Body Mass Index",
          style: TextStyle(
              color: Colors.black,
              fontSize: 45,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.8
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.grey[400],
        child: Column(
          children: [
            Expanded(child: Row(
              children: [
                Expanded(child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[500]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Icon(Icons.female, size: 150),
                      ),
                      Container(
                        child: Text("FEMALE", style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35)),
                      )
                    ],
                  ),
                )
                ),
                SizedBox(width: 15)
                ,
                Expanded(child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey[600],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Icon(Icons.male, size: 150),
                      ),
                      Container(
                        child: Text("Male", style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35)),
                      )
                    ],
                  ),
                ))
              ],
            )),
            Expanded(child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 15),
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[500]
              ),
              child: Column(
                children: [
                  const Expanded(child: Text("HEIGHT", style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                  )),
                  Expanded(child: RichText(text: const TextSpan(
                      text: "120",
                      style: TextStyle(fontSize: 50,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(text: "CM",
                            style: TextStyle(
                              color: Colors.black, fontSize: 20,))
                      ]
                  ))),
                  Expanded(child: Slider(
                      value: 80,
                      min: 0,
                      max: 100,
                      activeColor: Colors.blueGrey[700],
                      thumbColor: Colors.black,
                      divisions: 10,
                      secondaryActiveColor: Colors.blueGrey,
                      inactiveColor: Colors.blueGrey[600]
                      ,
                      onChanged: (value) {})
                  )
                ],
              ),
            )),
            Expanded(child: Row(
              children: [
                Expanded(child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      const Expanded(child: Text(
                        "Weight", style: TextStyle(fontSize: 45,
                          fontWeight: FontWeight.bold),)),
                      const Expanded(
                        child: Text("50", style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      Expanded(child: Container(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Expanded(child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.blueGrey[600],
                              child: const Icon(Icons.remove,size: 40,color: Colors.black,),
                            )),
                            Expanded(child:CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.blueGrey[600],
                              child: const Icon(Icons.add,size: 40,color: Colors.black,),
                            ))
                          ],
                        ),
                      ))
                    ],
                  ),
                )),
                const SizedBox(width: 15),
                Expanded(child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      const Expanded(child: Text("Age", style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold
                      ),)),
                      const Expanded(
                        child: Text("18", style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      Expanded(child: Container(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Expanded(child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.blueGrey[600],
                              child: const Icon(Icons.remove,size: 40,color: Colors.black,),
                            )
                            ),
                            Expanded(child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.blueGrey[600],
                              child: const Icon(Icons.add,size: 40,color: Colors.black,),
                            ))
                          ],
                        ),
                      ))
                    ],
                  ),
                ))
              ],
            )),
            const SizedBox(height: 15),
            ElevatedButton(onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor:
              Colors.blueGrey[600]), child: Container(
                width: double.infinity,
                child: const Text("CALCULATE",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ScoreScreen extends StatefulWidget {
  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  int counter1 = 0, counter2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Score Count"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                // Counter One Column
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        "Counter One",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$counter1",
                        style: const TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counter1 += 1;
                          });
                        },
                        child: const Text("Add 1 Point"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counter1 += 2;
                          });
                        },
                        child: const Text("Add 2 Points"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counter1 += 3;
                          });
                        },
                        child: const Text("Add 3 Points"),
                      ),
                    ],
                  ),
                ),
                // Counter Two Column
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        "Counter Two",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$counter2",
                        style: const TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counter2 += 1; // Correctly increment counter2
                          });
                        },
                        child: const Text("Add 1 Point"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counter2 += 2; // Correctly increment counter2
                          });
                        },
                        child: const Text("Add 2 Points"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counter2 += 3; // Correctly increment counter2
                          });
                        },
                        child: const Text("Add 3 Points"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              setState(() {
                counter1 = 0;
                counter2 =0;
              });
            }, child: Text("Reset"))
          ],
        ),
      ),
    );
  }
}

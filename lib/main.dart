import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aishwarya App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Portfolio"),
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: Colors.lightBlueAccent,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: const Center(
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 60, color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(40),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Aishwarya Jain",
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    icon: Icon(
                      Icons.lock_clock_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, top: 30, right: 30),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Github",
                    icon: Icon(
                      Icons.link,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, top: 30, right: 30),
              height: 50,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  "Update",
                  style: TextStyle(color: Colors.amberAccent),
                ),
              ),
            ),
            const SizedBox(height: 20),
            //FlatButton
            TextButton(
              onPressed: () {
                // Handle onPressed event here
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightGreenAccent,
                shadowColor: Colors.white,
              ),
              child: const Text(
                "Update",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle onPressed event here
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                overlayColor:
                    MaterialStateProperty.all<Color>(Colors.greenAccent),
              ),
              child: const Text(
                "Update",
                style: TextStyle(fontSize: 20),
              ),
            ),
            FloatingActionButton(
  foregroundColor: Colors.black,
  backgroundColor: Colors.yellow,
  onPressed: () {
    // Handle onPressed event here
  },
  child: const Icon(Icons.save),
),

FloatingActionButton.extended(
  onPressed: () {
    // Handle onPressed event here
  },
  label: const Text("Save"),
  icon: const Icon(Icons.save),
  backgroundColor: Colors.yellow,
  foregroundColor: Colors.black,
),






          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Quiz3 extends StatefulWidget {
  const Quiz3({super.key});

  @override
  State<Quiz3> createState() => _Quiz3State();
}

class _Quiz3State extends State<Quiz3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz 3"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                Navigator.pushNamed(context, '/Q2');
              },
              child: Text("Previous"),
          ),
            ElevatedButton(
              onPressed: () {
              Navigator.pushNamed(context, '/E1');
              },
              child: Text("Go to Enter"),
              ),
            ],
          ),
        ],
      )
    );
  }
}
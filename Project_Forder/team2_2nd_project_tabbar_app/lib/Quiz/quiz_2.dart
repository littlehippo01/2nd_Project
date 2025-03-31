import 'package:flutter/material.dart';

class Quiz2 extends StatefulWidget {
  const Quiz2({super.key});

  @override
  State<Quiz2> createState() => _Quiz2State();
}

class _Quiz2State extends State<Quiz2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz 2"),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
            child: Text("* 다음 중 옳은 것을 고르고 버튼을 누르세요."),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
            child: Text("1. 보더콜리는"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
            child: Text("1. 보더콜리는"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
            child: Text("1. 보더콜리는"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
            child: Text("1. 보더콜리는"),
          ),

          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                Navigator.pushNamed(context, '/Q1');
              },
              child: Text("Previous"),
          ),
              ElevatedButton(
                onPressed: () {
                Navigator.pushNamed(context, '/Q3');
              },
              child: Text("Next"),
                      ),
            ],
          ),

        ],
      ),
    );
  }
}
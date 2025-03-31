import 'package:flutter/material.dart';

class Quiz2 extends StatefulWidget {
  const Quiz2({super.key});

  @override
  State<Quiz2> createState() => _Quiz2State();
}

class _Quiz2State extends State<Quiz2> {
  late bool answer1;
  late bool answer2;
  late bool answer3;
  late bool answer4;
  late String result;

  @override
  void initState() {
    super.initState();
    answer1 = false;
    answer2 = false;
    answer3 = false;
    answer4 = false;
    result = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz 2"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("* 다음 중 옳은 문항의 스위치를 켜고 버튼을 누르세요.",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              children: [
                Text("1. 보더콜리는"),
                Switch(
                  value: answer1,
                  onChanged: (value) {
                    answer1 = value;
                    switchAction(answer1);
                    setState(() {});
                  },
                ),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text("2. 보더콜리는"),
                Switch(
                  value: answer2,
                  onChanged: (value) {
                    answer1 = value;
                    switchAction(answer2);
                    setState(() {});
                  },
                ),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text("3. 보더콜리는"),
                Switch(
                  value: answer3,
                  onChanged: (value) {
                    answer1 = value;
                    switchAction(answer3);
                    setState(() {});
                  },
                ),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text("4. 보더콜리는"),
                Switch(
                  value: answer4,
                  onChanged: (value) {
                    answer1 = value;
                    switchAction(answer4);
                    setState(() {});
                  },
                ),
              ],
            ),
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
  } // build

  // --- functions --- //
  switchAction(bool answer) {
    answer = answer == false ? true : false;
  }

  resultButton(){
    // 
  }
} // class

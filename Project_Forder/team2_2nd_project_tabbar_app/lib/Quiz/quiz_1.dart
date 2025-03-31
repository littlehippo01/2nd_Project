import 'package:flutter/material.dart';

class Quiz1 extends StatefulWidget {
  const Quiz1({super.key});

  @override
  State<Quiz1> createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  late String result;

  @override
  void initState() {
    super.initState();
    result = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz 1"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('다음 중 보더콜리의 기원 국가로 옳은 것은?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _showWrongDialog();
                  },
                  child: Text('한국'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _showWrongDialog();
                  },
                  child: Text('아이슬란드'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _showDialog();
                  },
                  child: Text('영국'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _showWrongDialog();
                  },
                  child: Text('인도'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Q2');
                    },
                    child: Text("Next"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  } // build

  // --- functions --- //
  _showDialog() {
    showDialog(
      context: context,

      barrierDismissible: false,
      barrierColor: const Color.fromARGB(255, 106, 102, 102),
      builder: (context) {
        return AlertDialog(
          title: Text("정답 입니다!"),
          content: Text("보더콜리의 기원은 영국 입니다."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Q2');
              },
              child: Text("다음 문제로"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("돌아가기"),
            ),
          ],
        );
      },
    );
  }

  _showWrongDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: const Color.fromARGB(255, 106, 102, 102),
      builder: (context) {
        return AlertDialog(
          title: Text("오답 입니다."),
          content: Text("힌트 : 보더콜리는 잉글랜드와 스코틀랜드의 국경 지방에서 양치기 개로 길러졌습니다."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("돌아가기"),
            ),
          ],
        );
      },
    );
  }
}// class
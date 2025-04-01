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
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Quiz 2"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Text(
                "* 다음 중 옳은 문항의 스위치를 켜고 \n  버튼을 누르세요.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Divider(height: 5),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(
                      "1. 보더콜리의 운동량은 하루에 30분 정도로 충분하다.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Switch(
                    value: answer1,
                    onChanged: (value) {
                      answer1 = value;
                      switchAction(answer1);
                      setState(() {});
                    },
                    activeColor: const Color.fromARGB(255, 255, 31, 15),
                  ),
                ],
              ),
            ),
            Divider(height: 5),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(
                      "2. 보더콜리는 영국에서 지능이 가장 높은 개로 알려져 있다.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Switch(
                    value: answer2,
                    onChanged: (value) {
                      answer2 = value;
                      switchAction(answer2);
                      setState(() {});
                    },
                    activeColor: const Color.fromARGB(255, 253, 152, 0),
                  ),
                ],
              ),
            ),
            Divider(height: 5),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(
                      "3. 보더콜리는 빠르게 명령을 배우고 수행할 수 있는 능력을 가지고 있다.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Switch(
                    value: answer3,
                    onChanged: (value) {
                      answer3 = value;
                      switchAction(answer3);
                      setState(() {});
                    },
                    activeColor: const Color.fromARGB(255, 54, 161, 57),
                  ),
                ],
              ),
            ),
            Divider(height: 5),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(
                      "4. 보더콜리의 건강을 위해서는 적절한 식단과 운동을 통해 관리 해주어야 한다.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Switch(
                    value: answer4,
                    onChanged: (value) {
                      answer4 = value;
                      switchAction(answer4);
                      setState(() {});
                    },
                    activeColor: const Color.fromARGB(255, 12, 85, 145),
                  ),
                ],
              ),
            ),
            Divider(height: 5),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      resultButton();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 119, 7, 122),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      '결과 확인',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Q3');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
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
  switchAction(bool answer) {
    answer = answer == false ? true : false;
  }

  resultButton() {
    if (answer1 == false &&
        answer2 == false &&
        answer3 == true &&
        answer4 == true) {
      _showDialog();
    } else {
      _showWrongDialog();
    }
  }

  _showDialog() {
    showDialog(
      context: context,

      barrierDismissible: false,
      barrierColor: Colors.grey,
      builder: (context) {
        return AlertDialog(
          title: Text("정답!", style: TextStyle(fontWeight: FontWeight.bold)),
          content: Text("Quiz 3로 넘어갑니다."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Q3');
              },
              child: Text("다음 문제로", style: TextStyle(color: Colors.black)),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("돌아가기", style: TextStyle(color: Colors.black)),
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
          title: Text("오답!", style: TextStyle(fontWeight: FontWeight.bold)),
          content: Text("다시 한번 답을 확인 하세요."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("돌아가기", style: TextStyle(color: Colors.black)),
            ),
          ],
        );
      },
    );
  }
} // class

import 'package:flutter/material.dart';

class Quiz3 extends StatefulWidget {
  const Quiz3({super.key});

  @override
  State<Quiz3> createState() => _Quiz3State();
}

class _Quiz3State extends State<Quiz3> {
  // Property
  late TextEditingController textField;
  late String resultText;
  late Color textColor;

  @override
  void initState() {
    super.initState();
    textField = TextEditingController();
    resultText = "";
    textColor = Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Quiz 3"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                child: Text(
                  "* 다음 문제의 빈 칸에 들어갈 정답을 아래에\n 적어주세요.",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(),
        
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 20),
                child: Text(
                  "문제 : 보더콜리는 높은 지능과 활동적인 성격을 활용해 ( ) 로서의 역할을 수행하는 것으로 유명 합니다.",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 20),
                child: TextField(
                  controller: textField,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "정답을 입력 해주세요.",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: ElevatedButton(
                  onPressed: () {
                    resultButton();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "결과 확인",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Text(
                  resultText,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19,color: textColor),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  'Hint',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: const Color.fromARGB(255, 5, 117, 65),
                  ),
                ),
              ),
              Image.asset(
                'images/border2.jpg',
                fit: BoxFit.fill,
                height: 200,
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text("Back to Quiz 1"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  } // build

  // --- functions --- //
  resultButton() {
    if (textField.text.trim().isEmpty) {
      -_showWrongDialog();
    } else {
      if (textField.text == "양치기") {
        resultText = "입력하신 '${textField.text}' 는 정답 입니다.";
        textColor = const Color.fromARGB(255, 16, 72, 117);
      } else {
        resultText = "오답 입니다. Hint 를 보고 다시 작성 해주세요.";
        textColor = const Color.fromARGB(255, 133, 31, 23);
      }
    }
    setState(() {});
  }

  _showWrongDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: const Color.fromARGB(255, 106, 102, 102),
      builder: (context) {
        return AlertDialog(
          title: Text(
            "경고",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          ),
          content: Text("빈 칸은 입력하실 수 없습니다."),
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

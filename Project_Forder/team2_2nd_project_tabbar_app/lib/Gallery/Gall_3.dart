import 'dart:async';

import 'package:flutter/material.dart';

class Gall3 extends StatefulWidget {
  const Gall3({super.key});

  @override
  State<Gall3> createState() => _Gall3State();
}

class _Gall3State extends State<Gall3> {
  // Property
  late List<String> imagesFile;
  late int currentPage;
  late String imgNickName;
  late Timer tim;
  @override
  void initState() {
    super.initState();


    imagesFile = [
      'baby01.jpg',
      'baby02.jpg',
      'baby03.jpg',
      'baby04.jpg',
      'baby05.png',
    ];

    currentPage = 0;
    imgNickName = "아주 아주 아기 때";

    // Timer설치
    tim = Timer.periodic(Duration(seconds: 3), (timer) {
      changeImage();
    },);
  }
    @override
  void dispose() {
    tim.cancel;
    super.dispose();
  }
  // Timer가 callback하는 Function
  changeImage() {
    currentPage++;

    if(currentPage >= imagesFile.length) {
      currentPage = 0;
    }

    // switch
    switch(currentPage){
      case 0:
        imgNickName = "아주 아주 아기 때";
      case 1:
        imgNickName = "조금 컸을 때";
      case 2:
        imgNickName = "이젠 혼자도 잘 걸어요";
      case 3:
        imgNickName = "개춘기예요";
      case 4:
        imgNickName = "다 컸어요. 늠름하죠?";
    }

    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('성장기'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // imagesFile[currentPage],
              imgNickName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: 450,
                  child: Image.asset(
                    'images/${imagesFile[currentPage]}',
                    width: 350,
                  ),
                ),
              ),
            ),

            Text(""),
            Text(
              "Timer를 이용했어요. 3초만 기다려 주세요.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
                color: Colors.deepPurple,
              ),
            ),
            Text(""),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/G1'), 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  child: Text('보더콜리 사진 보기'),
                ),

                Text("    "),
                
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/G2'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  child: Text('보더콜리 일러스트 보기'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  } // build
} // Class
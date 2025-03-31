import 'package:flutter/material.dart';

class Info2 extends StatefulWidget {
  const Info2({super.key});

  @override
  State<Info2> createState() => _Info2State();
}

class _Info2State extends State<Info2> {
  @override
  late List<Map<String,String>>collieInfo = [
    {
      "title": "📖 보더콜리란?",
      "description": "보더콜리는 스코틀랜드와 잉글랜드의 국경지대에서 유래한 가장 똑똑한 개로 알려져 있어요.\n원래는 양을 몰기 위해 길러졌기 때문에 민첩하고 에너지가 넘치며 주인의 말에 매우 잘 반응해요. ",
      
    },
    {
       "title": "📖 보더콜리의 특징",
      "description": "✔ 매우 높은 지능\n✔ 풍부한 에너지\n✔ 주인에게 충성심 강함",
    },
    {
      "title": "📖보더콜리의 운동량",
      "description": "하루 최소 2시간 이상의 운동이 필요하며,\n 다양한 놀이와 활동을 즐깁니다.",
    },
    {
       "title": "📖보더콜리의 유래",
      "description": "보더콜리는 영국과 스코틀랜드의 국경 지역에서 양치기 개로 활용되었어요. \n\n이 품종은 뛰어난 지능과 민첩성을 자랑하며, '콜리' 품종과의 교배를 통해 발전했어요.",
    },
     {
      "title": "📖관리",
      "description": "✔건강관리 : 보더콜리의 건강한 삶을 위한 적정한 식단과 운동\n ✔적합한 환경 : 큰 마당이나 활동적인 환경에서 잘 자람,아파트 생활에는 불편할 수 있음",
    },
    {
       "title": "📖훈련",
      "description": "많은 운동이 필요함,정기적인 산택과 놀이가 중요\n 보저콜리는 매우 똑똑하지만,과도한 에너지를 발산하기 위해 꾸준한 훈련이 필요",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("보더콜리를 알아보자"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Container(
        child: PageView.builder(
          itemCount: collieInfo.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    collieInfo[index]["title"]!,
                    style: const TextStyle(
                      fontSize: 24, 
                      fontWeight: FontWeight.bold
                      ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    collieInfo[index]["description"]!,
                    style: const TextStyle(
                      fontSize: 18
                      ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
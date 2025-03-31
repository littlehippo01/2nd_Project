import 'package:flutter/material.dart';

class Info3 extends StatefulWidget {
  const Info3({super.key});

  @override
  State<Info3> createState() => _Info3State();
}

class _Info3State extends State<Info3> {
    late bool swichValue;
  late List<String> jang=[];
  late List<String> dan=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    swichValue = true;
    jang = [
      "🧠 지능새로운 명령이나 트릭을 빠르게 배우고 잘 기억해요.",
      "🤝 충성심주인에게 매우 충실하고 교감이 깊어요.",
      "🎾 운동성에너지가 넘치고 다양한 스포츠나 놀이를 즐겨요.",
      "‍👩‍👧‍👦 사회성이 졸아 다른 동물과도 잘 지내는 편이에요.",
      "‍🐑 본능양몰이 본능이 살아 있어 훈련 시 집중력이 탁월해요."
    ];
    dan = [
      "🏃 운동량활동량이 많아 매일 충분한 운동이 필요해요.",
      "😵 지루함지루하면 스트레스를 받고 문제 행동을 보일 수 있어요.",
      "🧽 손질털이 풍성해서 정기적인 빗질과 관리가 필요해요.",
      "‍🧠 도전 욕구너무 똑똑해서 단순한 훈련은 금방 싫증을 느껴요."
    ];
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("보더콜리를 알아보자"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/2222.png',
            width: 250,
            height: 250,
            ),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("단점",
              style: TextStyle(
                color: const Color.fromARGB(255, 255, 195, 195),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              ),
              Switch(value: swichValue, 
                        
                onChanged:(value) {
                  swichValue = value;
                  setState(() {
                    
                  });
                },),
                Text("장점",
              style: TextStyle(
                color: const Color.fromARGB(255, 172, 251, 255),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
            ],

          ),
          Expanded(
            child: ListView.builder(
              itemCount:  swichValue ? jang.length : dan.length,
              itemBuilder: (context,index){
                String text = swichValue ? jang[index] : dan[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: ListTile(
                      leading: const Icon(Icons.pets, color: Colors.black),
                      title: Text(text, style: const TextStyle(fontSize: 16)),
                    ),
                    );
              },
              
              ),
          )

        ],
      ),
    );
  }//build
  

}

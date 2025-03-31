import 'package:flutter/material.dart';

class Enter3 extends StatefulWidget {
  const Enter3({super.key});

  @override
  State<Enter3> createState() => _Enter3State();
}

class _Enter3State extends State<Enter3> {
  late int timeGoes;
  late Timer myTimer;
  late int speed;

  @override
  void initState() {
    super.initState();
    timeGoes = 0;
    speed = 0;

    myTimer= Timer.periodic(Duration(milliseconds: 10), (timer) {
      turnImage();
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 237, 225),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: RotationTransition(
                turns: AlwaysStoppedAnimation(timeGoes/360),
                child: SizedBox(
                  height: 500,
                  width: 500,
                  child: Image.asset('images/image-1.png'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    speedButton();
                    setState(() {
                      
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.green,
                  ),
                  child: Text("빠르게", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
                ElevatedButton(
                  onPressed: () {
                    speedDown();
                    setState(() {
                      
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.green,
                  ),
                  child: Text("느리게", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/E2'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.green,
                  ),
                  child: Text("전 페이지", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/E1'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.green,
                  ),
                  child: Text("처음 페이지", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  speedButton(){
    myTimer.cancel();
      speed-=20;
    myTimer = Timer.periodic(Duration(milliseconds: speed), (timer) {
      turnImage();
      setState(() {
      });
    },);}
  speedDown(){
    myTimer.cancel();
    speed +=20;
    myTimer = Timer.periodic(Duration(milliseconds: speed), (timer) {
      turnImage();
      setState(() {
      });
    },);}

  turnImage(){
    timeGoes++;
    setState(() {
      
    });
  }
}
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String imageName;

  @override
  void initState() {
    super.initState();
    imageName = 'image copy.png';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: Image.asset(
                'images/$imageName'
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      _showdialog(context);
                      },
                    child: Text('앉아'),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      _showdialog2(context);
                    }, 
                    child: Text('일어서'),
                    ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/E2'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.blue,
                      minimumSize: Size(130, 40)
                    ),
                    child: Text("다음 페이지", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/E3'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.red,
                      minimumSize: Size(130, 40)
                    ),
                    child: Text("마지막 페이지", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  _showdialog(BuildContext context) {  // 켜기버튼 함수
    if (imageName == 'image copy.png') {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text('경고'),
            content: Text('이미 앉아있는 상태입니다.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(context),
                child: Text('네 알겠습니다.'),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text('앉기'),
            content: Text('앉을까요?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(context);
                  imageName = 'image copy.png';
                  setState(() {});
                },
                child: Text('네'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(context),
                child: Text('아니요'),
              ),
            ],
          );
        },
      );
    }
    setState(() {});
  }

  _showdialog2(BuildContext context) {    //끄기버튼 함수
    if (imageName == 'image copy 2.png') {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text('경고'),
            content: Text('이미 서있는 상태입니다.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(context),
                child: Text('네 알겠습니다.'),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text('일어서기'),
            content: Text('일어날까요?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(context);
                  imageName = 'image copy 2.png';
                  setState(() {});
                },
                child: Text('네'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(context),
                child: Text('아니요'),
              ),
            ],
          );
        },
      );
    }
  }





  mailFunction(BuildContext context, String part){
    if(part =='sm'){
      Navigator.pushNamed(context, '/E2');
    }else{Navigator.pushNamed(context, '/E3');}
  }
}//Mail

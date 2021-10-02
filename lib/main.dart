import 'package:flutter/material.dart';

// import in the begining of the file
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Xylophone'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // methode play audio
  void playsound(int soundNumber) {
    // or as a local variable
    final player = AudioCache();
    // call this method when desired
    player.play('c$soundNumber.mp3');
  }

  // methode build item
  Widget buildKey({required int soundNumber, required String txt}) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(30),
        ),
        child: MaterialButton(
          onPressed: () {
            playsound(soundNumber);
          },
          child: Text(
            txt,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            buildKey(soundNumber: 1, txt: '"سورة الفاتحة'),
            SizedBox(
              height: 20,
            ),
            buildKey(soundNumber: 2, txt: '"سورة الناس'),
            SizedBox(
              height: 20,
            ),
            buildKey(soundNumber: 3, txt: '"سورة الفلق'),
            SizedBox(
              height: 20,
            ),
            buildKey(soundNumber: 4, txt: '"سورة الإخلاص'),
            SizedBox(
              height: 20,
            ),
            buildKey(soundNumber: 5, txt: '"سورة النصر'),
            SizedBox(
              height: 20,
            ),
            buildKey(soundNumber: 6, txt: '"سورة الكوثر'),
            SizedBox(
              height: 20,
            ),
            buildKey(soundNumber: 7, txt: '"سورة العصر'),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

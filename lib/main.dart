import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "剪刀石頭布",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int player;
  int computer;
  void play() {
    computer = Random().nextInt(3);

    print(computer);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('剪刀石頭布'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('data'),
                const SizedBox(width: 40),
                Text('test'),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                RaisedButton(
                  onPressed: () {
                    player = 0;
                    play();
                  },
                  child: Text('剪刀'),
                  color: Colors.blue[200],
                  elevation: 20,
                ),
                const SizedBox(width: 20),
                RaisedButton(
                  onPressed: () {
                    player = 1;
                    play();
                  },
                  child: Text('石頭'),
                  color: Colors.yellow,
                  elevation: 20,
                ),
                const SizedBox(width: 20),
                RaisedButton(
                  onPressed: () {
                    player = 3;
                    play();
                  },
                  child: Text('布'),
                  color: Colors.red[200],
                  elevation: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

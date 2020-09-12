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
  var computer_Output = '';
  var player_Output = '';
  var cont = '123';
  void play() {
    computer = Random().nextInt(3);
    if (computer == 0)
      computer_Output = '剪刀';
    else if (computer == 1)
      computer_Output = '石頭';
    else
      computer_Output = '布';
      setState(() {
      cont = '電腦出$computer_Output vs 你出$player_Output';
    });
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
                //Text('test'),
                Text(cont),
                //Text(computer_Output),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                RaisedButton(
                  onPressed: () {
                    player = 0;
                    player_Output = '剪刀';
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
                    player_Output = '石頭';
                    play();
                  },
                  child: Text('石頭'),
                  color: Colors.yellow,
                  elevation: 20,
                ),
                const SizedBox(width: 20),
                RaisedButton(
                  onPressed: () {
                    player = 2;
                    player_Output = '布';
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

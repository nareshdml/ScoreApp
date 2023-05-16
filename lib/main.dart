import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ScoreApp",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  increaseNumber() {
    setState(() {
      number++;
    });
  }

  decreaseNumber() {
    setState(() {
      number--;
    });
  }

  resSet() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Score Changer'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: resSet,
      ),
      body: Column(
        children: [
          SizedBox(height: 25),
          Center(
            child: Text(
              'Score is',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 25),
          Center(
            child: Text(
              number.toString(),
              style: TextStyle(
                  fontSize: 90,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text(
                  'Increase',
                ),
                onPressed: increaseNumber,
              ),
              SizedBox(width: 25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: decreaseNumber,
                child: Text(
                  'Decrease',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

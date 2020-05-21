import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: TextExam()
));

class TextExam extends StatefulWidget {
  @override
  _TextExamState createState() => _TextExamState();
}

class _TextExamState extends State<TextExam> {
  final String name = 'Aditap';
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          alignment: FractionalOffset.center,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.lightbulb_outline,
                  color: _lights ? Colors.yellow.shade600 : Colors.black,
                  size: 60,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if(_lights) {
                      _lights = false;
                    }
                    else {
                      _lights = true;
                    }

                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.yellow.shade600,
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      'TURN LIGHTS ON',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}

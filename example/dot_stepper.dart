import 'package:flutter/material.dart';

import 'package:im_stepper/stepper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool stepNext = false;
  bool stepPrevious = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Icon Stepper Example'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        // ***DON'T FORGET***
                        stepNext = false;
                        stepPrevious = true;
                      });
                    },
                    icon: Icon(Icons.chevron_left),
                  ),
                  DotStepper(
                    goNext: stepNext,
                    goPrevious: stepPrevious,
                    dotCount: 5,
                    indicatorEffect: IndicatorEffect.jump,
                    // indicatorType: IndicatorType.contain,
                    // direction: Axis.vertical,
                    // dotRadius: 150,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        // ***DON'T FORGET***
                        stepPrevious = false;
                        stepNext = true;
                      });
                    },
                    icon: Icon(Icons.chevron_right),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
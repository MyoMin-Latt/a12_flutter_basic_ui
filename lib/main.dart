// @12.1 Flutter Set up in Android studio
// @12.2 Setting up in VS code
// @12.3 Flutter Basic UI (First App and Widget) => Widget , Material App Widget
// @12.4 Flutter Basic UI (AppBar , Icon, Floating action button)
// @12.5 Flutter Basic UI (TextWidget)
// @12.6 Flutter Basic UI (Container)
// @12.7 Flutter Basic UI(Image Widget)
// @12.8 Flutter Basic UI (Rich Text Widget)
// @12.9 Flutter Basic UI (Row and Column), Expanded, Flexible
//        Expanded => take all space, Flexible => take needed space
// @12.10 Flutter Basic UI (Wrap Widget), SingleChildScrollView, For Loop
// @12.11 Flutter Basic Widget(Button Part1), ElevatedButton.styleFrom()
// @12.12 Flutter Basic UI (Button Part 2)
// @12.13 Flutter Basic UI (Stack Layout), Positioned, container
// @12.14 (Stack interactive UI) https://youtu.be/buhVyKjkDtY
// @12.15 Flutter Basic UI (ListView & Card Widget) Inkwell
// @12.16 Flutter Basic UI (GridView) SliverGridDelegateWithMaxCrossAxisExtent, SliverGridDelegateWithFixedCrossAxisCount
// @12.17 Practical UI Building [Contact List UI)
//        https://randomuser.me/photos, https://flutterawesome.com/searchable-listview-with-flutter/

//Google => Material
//Iphone => Cupertino
//Widget => less ,ful
//debug //release // hybrid
//Container
//project file network memory
//Row Column Wrap Stack  ListVeiw GridView
//variable List Map Set
// 6 3 3
//position

// @12.18 Flutter Basic UI (Introduction to Stateful Widget)
// @12.19 Flutter Basic UI [TextField Widget]
// @12.20 Flutter Basic UI [CheckBox Widget] forloop
// @12.21 Flutter Basic UI (Radio Button Widget)
// @12.22 Flutter Basic UI [Progress Indicator] Determinate and indeterminate inidicator
//        Increase value in the state but cannot increase value in the build
// @12.23 Flutter Basic UI [Slider Widget]
//        Continuous sliders, Discrete sliders, Range slider, SliderTheme in MaterilApp

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      sliderTheme: SliderThemeData(
        thumbColor: Colors.green,
        inactiveTrackColor: Colors.black,
        activeTrackColor: Colors.blue,
        valueIndicatorColor: Colors.blue,
        valueIndicatorTextStyle: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.white
        ),
        activeTickMarkColor: Colors.white,
        inactiveTickMarkColor: Colors.white,
        
      )
    ),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _value1 = 0;
  double _value2 = 0;
  RangeValues _value3 = const RangeValues(30, 70);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Slider(
                // Continuous sliders
                min: 0,
                max: 100,
                value: _value1,
                // divisions: 100,
                // label: _value1.toInt().toString(), // need division
                onChanged: (val) {
                  setState(() {
                    _value1 = val;
                  });
                }),
            Slider(
                // Discrete sliders
                // activeColor: Colors.red,
                // inactiveColor: Colors.green,
                // thumbColor: Colors.blue,
                min: 0,
                max: 100,
                divisions: 10,
                label: _value2.toInt().toString(), // need division
                value: _value2,
                onChanged: (val) {
                  setState(() {
                    _value2 = val;
                  });
                }),
            RangeSlider(
                // Range slider
                min: 0,
                max: 100,
                divisions: 10,
                labels: RangeLabels(_value3.start.toInt().toString(),
                    _value3.end.round().toString()),
                values: _value3,
                onChanged: (val) {
                  setState(() {
                    _value3 = val;
                  });
                })
          ],
        ));
  }
}

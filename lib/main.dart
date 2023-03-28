import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:gp/slide.dart';

String dropdownvalue = 'English';
var items = [
  'English',
  'العربــيـة',
  'Français',
  'Español',
  '中文',
];

String text = 'WELCOME  TO  ZAMIL SCIENCE  OASIS';
void main() {
  runApp(MaterialApp(
    home: MyApp() ,
  ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Scaffold(
            body:  Container(
              child: Stack(
                  children: [

                    Align(
                      child: Image.asset(
                        'images/b.gif',
                        width: 420.4,
                        height: 900.4,
                        fit: BoxFit.cover,
                      ),

                    ),
                    Align(
                        alignment: Alignment.center,
                        child:  SizedBox(
                          width: 250.0,
                          child: DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 27,
                              fontFamily: 'afnan',
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(text),
                              ],
                              //   onTap: () {
                              //   print("Tap Event");
                              //},
                            ),
                          ),
                        )

                    ),

                    Row(
                      children: <Widget>[
                        const SizedBox(width: 100.0, height: 0.0),
                        const Text(
                          'Available with',
                          style: TextStyle(fontSize: 22.0,color: Colors.white,fontFamily: 'afnan'),
                        ),
                        const SizedBox(width: 30.0, height: 100.0),
                        DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'afnan',
                            color: Colors.grey,
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              RotateAnimatedText('English'),
                              RotateAnimatedText('Arabic'),
                              RotateAnimatedText('french'),
                              RotateAnimatedText('spanish'),
                              RotateAnimatedText('chinese'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,

                      child:DropdownButton(
                        // Initial Value
                        value: dropdownvalue,
                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),
                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items,style: TextStyle(color: Colors.grey,fontFamily: 'afnan')),
                          );
                        }).toList(),
                        onChanged:(String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                            text = newValue;
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => slide()),
                            );
                          }
                          );
                        },
                      ),
                    ),

                  ] ),
            ))
    );

  }



}
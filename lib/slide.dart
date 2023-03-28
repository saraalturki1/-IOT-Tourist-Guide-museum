import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:gp/main.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:gp/NearBy.dart';

//NFC
import 'package:gp/Nfc.dart';


class slide extends StatefulWidget {
  @override
  _slideState createState() => _slideState();
}
class _slideState extends State<slide> {
  final player = AudioPlayer();

  //debugShowCheckedModeBanner: false,

  @override
  Widget build(BuildContext context) {
    (dropdownvalue == items[0]) ?   player.play(AssetSource('en.mp3')) :(dropdownvalue == items[1]) ? player.play(AssetSource('ar.mp3')) :(dropdownvalue == items[2]) ?  player.play(AssetSource('fr.mp3')):(dropdownvalue == items[3]) ?  player.play(AssetSource('sp.mp3')):  player.play(AssetSource('ch.mp3')) ;


    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
            children: [

              Align(
                child: Image.asset(
                  'images/b.gif',
                  width: 401.4,
                  height: 818.4,
                  fit: BoxFit.cover,
                ),

              ),
              Align (
                  child: Padding(
                      padding: const EdgeInsets.all(12.0),

                      child: SlideAction(
                          alignment: Alignment.bottomCenter,
                          borderRadius: 12,
                          elevation: 0,
                          text:(dropdownvalue == items[0]) ? "Hello"  :(dropdownvalue == items[1]) ?  "مرحبـــا" :(dropdownvalue == items[2]) ?  "Bounjor" :(dropdownvalue == items[3]) ?  "Hola":  "Nǐ hǎo" ,
                          innerColor: Colors.white,
                          outerColor: Colors.black12,
                          textStyle: TextStyle(fontFamily: 'afnan',fontSize: 35,color: Colors.grey),
                          onSubmit:  ()  {
                            const Duration(seconds: 1);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Stack(children: const <Widget> [
                                NearBy(),
                                Page52State(),
                              ]
                              ),
                              ),
                            );

                            /* Here is the code to enable NFC tag in our application
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const nfc());
                              ]
                              ),
                              ),
                            );

                            */



                          }))

              )])



    );}}
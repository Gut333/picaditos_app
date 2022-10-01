import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:picaditos_app/src/ui/components/draw_tactics_component.dart';
import 'package:picaditos_app/src/ui/components/player_attribute_component.dart';
import 'package:picaditos_app/src/ui/components/player_button_component.dart';
import 'package:picaditos_app/src/ui/components/soccer_arena_component.dart';
import 'dart:ui';

import 'package:picaditos_app/src/ui/pages/home_page.dart';
import 'package:picaditos_app/src/ui/pages/players_page.dart';

// import 'package:mvc_pattern/mvc_pattern.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Picaditos Manager",
      debugShowCheckedModeBanner: false,
      home: PlayersPage(),
    );
  }
}


class PlayerFullData extends StatefulWidget {
  const PlayerFullData({Key? key}) : super(key: key);

  @override
  State<PlayerFullData> createState() => _PlayerFullDataState();
}

class _PlayerFullDataState extends State<PlayerFullData> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _circle(),
        const SizedBox(height: 5),
        _playerName(),
        const PlayerAttributes(),

      ],
    );
  }

  _circle(){
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
                border: Border.all(color: Colors.black,width: 2.0),
                borderRadius: const BorderRadius.all(Radius.circular(100))
            ),
          ),
        ],
      ),
    );
  }
  
  _playerName(){
    return Container(
      height: 50,
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.orangeAccent,
          borderRadius:BorderRadius.all(Radius.circular(60))),
      child: Center(
        child: _customText("Maximo Crippy"),
      ),
      
    );
    
  }

  _customText(String text){

    return Text(text,
      style: const TextStyle(
        fontSize: 15,
        letterSpacing: 2,
        fontWeight: FontWeight.bold,
      ),
    );
  }


}


class PlayerAttributes extends StatefulWidget {
  const PlayerAttributes({Key? key}) : super(key: key);

  @override
  State<PlayerAttributes> createState() => _PlayerAttributesState();
}

class _PlayerAttributesState extends State<PlayerAttributes> {
  @override
  Widget build(BuildContext context) {
    return _attributesBody();

  }

  _attributesBody(){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        color: const Color.fromARGB(255, 233, 231, 236)  ,
        height: 400,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            _customText("CARACTERISTICAS DE JUEGO"),
            const Divider(height: 10, color: Colors.black,),
            PlayerAttributeComponent(attributeType: "DEFENSA", percentage: 0.5),
            PlayerAttributeComponent(attributeType: "CONTROL DE PELOTA", percentage: 0.7),
            PlayerAttributeComponent(attributeType: "TROMPO", percentage: 1.0),
            PlayerAttributeComponent(attributeType: "MANO A MANO", percentage: 0.2),
            PlayerAttributeComponent(attributeType: "REMATE MEDIA DISTANCIA", percentage: 0.8),

          ],
        ),
      ),

    );

  }

  _customText(String text){
    return Text(text,
      style: const TextStyle(
        fontSize: 15,
        letterSpacing: 2,
        fontWeight: FontWeight.bold,
      ),
    );
  }



}







////////////CUSTOM COLORS/////////////////
// CustomLime                           //
// Color.fromARGB(255, 193, 245, 79)    //
//                                      //
// CustomLightGrey                      //
// Color.fromARGB(255, 55, 65, 77)      //
//                                      //
// CustomBlue                           //
// Color.fromARGB(255, 22, 148, 251)    //
//                                      //
// CustomBlackGrey                      //
// Color.fromARGB(255, 30, 30, 30)      //
//                                      //
// CustomRed                            //
// Color.fromARGB(255, 155, 34, 65)     //
//                                      //
// CustomOrange                         //
// Color.fromARGB(255, 252, 148, 69)    //
//                                      //
// CustomWhite                          //
// Color.fromARGB(255, 233, 231, 236)   //
//////////////////////////////////////////


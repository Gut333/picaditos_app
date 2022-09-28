import 'package:flutter/material.dart';
import 'package:picaditos_app/src/ui/components/draw_tactics_component.dart';

class SoccerField extends StatelessWidget {
  const SoccerField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          color: const Color.fromARGB(255, 30, 30, 30),
          child: Stack(
            children: [
              _fieldBorderLines(),
              DrawTactics(),
            ],
          ),
        ),
      ),
    );
  }


  _fieldBorderLines(){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white70, //borderArena
          width: 3,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _fieldGoalBoxTop(),
          _fieldCenterLine(),
          _fieldGoalBoxBottom(),
        ],
      ),
    );

  }

  _fieldGoalBoxTop(){
    return Container(
      width: 150,
      height: 50,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 30, 30, 30),
        border: Border(
          bottom: BorderSide(
              color: Color.fromARGB(255, 233, 231, 236)),
          left: BorderSide(
              color: Color.fromARGB(255, 233, 231, 236)),
          right: BorderSide(
              color: Color.fromARGB(255, 233, 231, 236)),
        ),
      ),
    );
  }

  _fieldCenterLine(){
    return Container(
      height: 2,
      width: double.infinity,
      color: const Color.fromARGB(255, 233, 231, 236),
    );

  }

  _fieldGoalBoxBottom(){
    return Container(
      width: 150,
      height: 50,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 30, 30, 30),
        border: Border(
          top: BorderSide(
              color: Color.fromARGB(255, 233 , 231, 236)),
          left: BorderSide(
            color: Color.fromARGB(255, 233, 231, 236),
          ),
          right: BorderSide(
            color: Color.fromARGB(255, 233, 231, 236),
          ),
        ),
      ),
    );
  }


}
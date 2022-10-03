

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PlayerAttributeComponent extends StatefulWidget {
  String attributeType;
  double percentage;

  PlayerAttributeComponent(
      {Key? key,
        required this.attributeType,
        required this.percentage,
      }) : super(key: key);

  @override
  State<PlayerAttributeComponent> createState() => _PlayerAttributeComponentState();
}

class _PlayerAttributeComponentState extends State<PlayerAttributeComponent> {
  @override
  Widget build(BuildContext context) {
    return _attributeModule();
  }

  _attributeModule(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _customText(),
        _customPercentIndicator(),
      ],
    );
  }

  _customText(){
    return Text(
      widget.attributeType,
      style: const TextStyle(
        fontSize: 15,
        letterSpacing: 2,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _customPercentIndicator(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: LinearPercentIndicator(
        animationDuration: 2000,
        animation: true,
        backgroundColor: const Color.fromARGB(255, 55, 65, 77),
        progressColor: const Color.fromARGB(255, 22, 148, 251),
        lineHeight: 20,
        width: 200,
        percent: widget.percentage,
        barRadius: const Radius.circular(20),
      ),
    );

  }

}
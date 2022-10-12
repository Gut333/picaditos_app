

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
        Expanded(child: _customText()),
        Expanded(child: _customPercentIndicator()),
      ],
    );
  }

  _customText(){
    return Text(
      widget.attributeType,
      style: const TextStyle(
        fontSize: 10,
        letterSpacing: 1,
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
        lineHeight: 10,
        width: 100,
        percent: widget.percentage,
        barRadius: const Radius.circular(20),
      ),
    );

  }

}
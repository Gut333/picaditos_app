// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:picaditos_app/src/models/player_model.dart';

class PlayerButtonWidget extends StatefulWidget {
  Color? buttonColor;
  PlayerModel? player;
  double? buttonSize;

  PlayerButtonWidget({
    Key? key,
    this.buttonColor,
    this.player,
    this.buttonSize,
  }) : super(key: key);

  @override
  State<PlayerButtonWidget> createState() => _PlayerButtonWidgetState();
}

class _PlayerButtonWidgetState extends State<PlayerButtonWidget> {
  Offset offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buttonMovement(),
    );
  }

  _buttonMovement() {
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: GestureDetector(
        child: _buttonBody(),
        onPanUpdate: (details) {
          setState(() {
            offset = Offset(
                offset.dx + details.delta.dx, offset.dy + details.delta.dy);
          });
        },
      ),
    );
  }

  _buttonBody() {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        height: widget.buttonSize,
        width: widget.buttonSize,
        decoration: BoxDecoration(
          color: widget.buttonColor,
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          border: Border.all(
            color: const Color.fromARGB(255, 233, 231, 236),
            width: 2,
          ),
        ),
      ),
    );
  }
}

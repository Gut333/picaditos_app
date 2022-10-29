// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PlayerButtonWidget extends StatefulWidget {
  Color? buttonColor;

  PlayerButtonWidget({
    Key? key,
    this.buttonColor,
  }) : super(key: key);

  @override
  State<PlayerButtonWidget> createState() => _PlayerButtonWidgetState();
}

class _PlayerButtonWidgetState extends State<PlayerButtonWidget> {
  Offset offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _playerMovement(),
    );
  }

  _playerMovement() {
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: GestureDetector(
        child: _playerCircle(),
        onPanUpdate: (details) {
          setState(() {
            offset = Offset(
                offset.dx + details.delta.dx, offset.dy + details.delta.dy);
          });
        },
      ),
    );
  }

  _playerCircle() {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        height: 25,
        width: 25,
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

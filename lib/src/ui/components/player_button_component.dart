import 'package:flutter/material.dart';

class PlayerButtonWidget extends StatefulWidget {
  final Color backgroundColor;

  const PlayerButtonWidget(
      {Key? key, required this.backgroundColor}) : super(key: key);


  @override
  State<PlayerButtonWidget> createState() => _PlayerButtonWidgetState();
}

class _PlayerButtonWidgetState extends State<PlayerButtonWidget> {
  Offset offset = Offset.zero;
  Color backgroundColor = Colors.tealAccent;

  @override
  Widget build(BuildContext context) {

    return Container(
      child: _playerMovement(backgroundColor),
    );
  }

  _playerMovement(Color backgroundColor){
    this.backgroundColor = backgroundColor;

    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: GestureDetector(
        child: _playerCircle(backgroundColor),
        onPanUpdate: (details){
          setState(() {
            offset = Offset(offset.dx + details.delta.dx,
                offset.dy + details.delta.dy);
          });

        },
      ),

    );

  }

  _playerCircle(Color backgroundColor){
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        height: 27,
        width: 27,
        decoration: BoxDecoration(
          color: backgroundColor,
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
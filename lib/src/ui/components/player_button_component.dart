import 'package:flutter/material.dart';



class PlayerButtonWidget extends StatefulWidget {
  const PlayerButtonWidget(
      {Key? key}) : super(key: key);

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

  _playerMovement(){

    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: GestureDetector(
        child: _playerButton(),
        onPanUpdate: (details){
          setState(() {
            offset = Offset(offset.dx + details.delta.dx,
                offset.dy + details.delta.dy);
          });

        },
      ),

    );

  }

  _playerButton(){
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        height: 27,
        width: 27,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 22, 148, 251),
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
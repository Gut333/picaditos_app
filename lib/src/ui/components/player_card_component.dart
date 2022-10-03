
import 'package:flutter/material.dart';
import 'package:picaditos_app/src/ui/components/player_characteristics_component.dart';



class PlayerCard extends StatefulWidget {
  String playerName;

  PlayerCard({
    Key? key,
    required this.playerName,
  }) : super(key: key);

  @override
  State<PlayerCard> createState() => _PlayerCardState();
}

class _PlayerCardState extends State<PlayerCard> {
  @override
  Widget build(BuildContext context) {
    return _body();
  }

  _body(){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2.5, color: const Color.fromARGB(255, 30, 30, 30) ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: const Color.fromARGB(255, 233, 231, 236),
        ),
        child: Column(
          children: [
            const SizedBox(height: 5),
            _playerName(),
            const PlayerCharacteristics(),
          ],
        ),
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
        child: _customText(),
      ),
    );

  }

  _customText(){
    return Text(
      widget.playerName,
      style: const TextStyle(
        fontSize: 15,
        letterSpacing: 2,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _playerCircle(){
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
            child: Icon(Icons.person),
          ),
        ],
      ),
    );
  }



}
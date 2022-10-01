
import 'package:flutter/material.dart';
import 'package:picaditos_app/src/ui/pages/home_page.dart';
import '../components/player_attribute_component.dart';

class PlayersPage extends StatefulWidget {
  const PlayersPage({Key? key}) : super(key: key);

  @override
  State<PlayersPage> createState() => _PlayersPage();
}

class _PlayersPage extends State<PlayersPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 233, 231, 236)  ,
        appBar: _playersPageAppBar(),
        body: ListView(
          children: [
            PlayerCard(playerName: "Maximo Cripi"),

          ],
        )
      ),
    );
  }

  _playersPageAppBar(){
    return AppBar(
      toolbarHeight: 75,
      elevation: 0,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      flexibleSpace: Container(
        color: Colors.transparent,
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
             SizedBox(width: 10,),
            Icon(Icons.arrow_back),
            SizedBox(width: 20,),
            Icon(Icons.edit),

          ],
        ),
      ),
    );

  }


}

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

  _body(){
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        color: Colors.redAccent,
        child: Column(
          children: [
            _playerCircle(),
            const SizedBox(height: 5),
            _playerName(),
            const PlayerAttributes(),

          ],
        ),

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


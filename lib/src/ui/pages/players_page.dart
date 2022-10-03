
import 'package:flutter/material.dart';
import '../components/player_attribute_component.dart';
import '../components/player_card_component.dart';

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
            PlayerCard(playerName: "Pepe Munieco"),

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






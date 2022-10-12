import 'package:flutter/material.dart';
import 'package:picaditos_app/src/ui/components/player_attribute_component.dart';



class PlayerCharacteristics extends StatefulWidget {
  const PlayerCharacteristics({Key? key}) : super(key: key);

  @override
  State<PlayerCharacteristics> createState() => _PlayerCharacteristicsState();
}

class _PlayerCharacteristicsState extends State<PlayerCharacteristics> {
  @override
  Widget build(BuildContext context) {
    return _attributesBody();
  }

  _attributesBody(){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        color: const Color.fromARGB(255, 233, 231, 236)  ,
        height: 300,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            _customText("CARACTERISTICAS DE JUEGO"),
            const Divider(height: 10, color: Colors.black,),
            PlayerAttributeComponent(attributeType: "DEFENSA", percentage: 0.5),
            PlayerAttributeComponent(attributeType: "CONTROL DE PELOTA", percentage: 0.7),
            PlayerAttributeComponent(attributeType: "MANO A MANO", percentage: 0.2),
            PlayerAttributeComponent(attributeType: "REMATE", percentage: 0.8),

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
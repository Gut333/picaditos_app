
import 'package:flutter/material.dart';
import 'package:picaditos_app/main.dart';
import '../components/player_button_component.dart';
import '../components/soccer_arena_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 55, 65, 77),
        appBar: _customAppBar(),
        body: Stack(
          children: const [
             SoccerField(),
            PlayerButtonWidget(),
            PlayerButtonWidget(),
            PlayerButtonWidget2(),
            PlayerButtonWidget2(),
            PlayerButtonWidget(),



          ],
        ),
      ),
    );
  }

  _customAppBar(){
    return AppBar(
      toolbarHeight: 75,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      flexibleSpace: Container(
        color: Colors.transparent,
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 2,),
            _circleAppBar(),
          ],
        ),
      ),
    );

  }

  _circleAppBar(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(width: 30,),
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 155, 34, 65),
                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                  border: Border.all(color: Colors.white,width: 1),
                  gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 55, 65, 77),
                        Color.fromARGB(255, 155, 34, 65)]),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("TEAM MAFUBA",
                      style: TextStyle(color: Colors.white,fontSize: 13),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 155, 34, 65),
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              border: Border.all(color: Colors.white,width: 1),
            ),
            child: const Icon(Icons.shield_sharp,color: Colors.white,size: 35,),
          ),
        ],
      ),
    );
  }

}
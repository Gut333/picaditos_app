import 'package:flutter/material.dart';
import 'package:picaditos_app/src/ui/components/draw_tactics_component.dart';
import 'package:picaditos_app/src/ui/components/player_button_component.dart';
import 'package:picaditos_app/src/ui/components/soccer_arena_component.dart';
import 'dart:ui';

// import 'package:mvc_pattern/mvc_pattern.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Picaditos Manager",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


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
            PlayerButtonWidget(),
            PlayerButtonWidget(),
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
            const SizedBox(width: 10,),
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
          height: 55,
          width: 55,
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




  _drawerModule(){
    return Drawer(

      width: 200,
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height:50,
            width: double.infinity,
            decoration:  BoxDecoration(
              border: Border.all(color: Colors.black),
              gradient: const LinearGradient(colors: [
                Color.fromARGB(255, 55, 65, 77),
                Color.fromARGB(255, 155, 34, 65)
              ]),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(200),
                bottomLeft: Radius.circular(200),
              )
            ),

            child: const Center(
              child: Text("FORMACIONES",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(child: ListView(
            children: const [
              TeamSquadItem(),
              TeamSquadItem(),
              TeamSquadItem(),

            ],
          )),

        ],
      ),
    );
  }


  _playerCard(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 250,
        width: 150,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 55, 65, 77),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            color:const Color.fromARGB(255, 193, 245, 79),
            width: 1.0,

          ),

        ),
      ),
    );


  }



  }


class TeamSquadItem extends StatefulWidget {
  const TeamSquadItem({Key? key}) : super(key: key);

  @override
  State<TeamSquadItem> createState() => _TeamSquadItemState();
}

class _TeamSquadItemState extends State<TeamSquadItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        top: 5,
        bottom: 5,
      ),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 55, 65, 77),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(200),
            bottomLeft: Radius.circular(200),
          ),
        ),
        child: GestureDetector(
          onTap: _setSquad,
          child: Center(child: Text("DEFENSIVA")),//como hacer que se setee una squad personalizada ???
        ),
      ),
    );
  }

  _setSquad(){
    setState(() {


    });



  }

}


/////////////////CUSTOM COLORS//////////////////////////////////////////
// CustomLime
// Color.fromARGB(255, 193, 245, 79)
//
// CustomLightGrey
// Color.fromARGB(255, 55, 65, 77)
//
// CustomBlue
// Color.fromARGB(255, 22, 148, 251)
//
// CustomBlackGrey
// Color.fromARGB(255, 30, 30, 30)
//
// CustomRed
// Color.fromARGB(255, 155, 34, 65)
//
// CustomOrange
// Color.fromARGB(255, 252, 148, 69)
//
// CustomWhite
// Color.fromARGB(255, 233, 231, 236)
/////////////////////////////////////////////////////////////////////
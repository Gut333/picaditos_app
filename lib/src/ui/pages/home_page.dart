
import 'package:flutter/material.dart';
import 'package:picaditos_app/main.dart';
import 'package:picaditos_app/src/ui/pages/players_page.dart';
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
        appBar: _customAppBarBody(),
        body: Stack(
          children: [
            const SoccerField(),
            PlayerButtonWidget(buttonColor: const Color.fromARGB(255, 193, 245, 79)),
            PlayerButtonWidget(buttonColor: const Color.fromARGB(255, 22, 148, 251) ),
            PlayerButtonWidget(buttonColor: const Color.fromARGB(255, 252, 148, 69)),
            PlayerButtonWidget(buttonColor: const Color.fromARGB(255, 155, 34, 65)),
            PlayerButtonWidget(buttonColor: const Color.fromARGB(255, 30, 30, 30)),

          ],
        ),
      ),
    );
  }

  _customAppBarBody(){
    return AppBar(
      toolbarHeight: 55,
      elevation: 0,
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
            _teamCircle(),
          ],
        ),
      ),
    );

  }

  _teamCircle(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(width: 30,),
              Container(
                height: 40,
                width: 150,
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
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 155, 34, 65),
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              border: Border.all(color: Colors.white,width: 1),
            ),
            child: GestureDetector(
              onTap: _controllerToPlayersPage,
            ),
          ),
        ],
      ),
    );
  }



  void _controllerToPlayersPage(){
    setState(() {

      final route = MaterialPageRoute(builder: (BuildContext context){

        return const PlayersPage();
      });
      Navigator.of(context).push(route);
    });
  }










}

////////////CUSTOM COLORS/////////////////
// CustomLime                           //
// Color.fromARGB(255, 193, 245, 79)    //
//                                      //
// CustomLightGrey                      //
// Color.fromARGB(255, 55, 65, 77)      //
//                                      //
// CustomBlue                           //
// Color.fromARGB(255, 22, 148, 251)    //
//                                      //
// CustomBlackGrey                      //
// Color.fromARGB(255, 30, 30, 30)      //
//                                      //
// CustomRed                            //
// Color.fromARGB(255, 155, 34, 65)     //
//                                      //
// CustomOrange                         //
// Color.fromARGB(255, 252, 148, 69)    //
//                                      //
// CustomWhite                          //
// Color.fromARGB(255, 233, 231, 236)   //
//////////////////////////////////////////


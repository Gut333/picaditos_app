

import 'package:flutter/material.dart';
import 'package:picaditos_app/src/ui/pages/home_page.dart';


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


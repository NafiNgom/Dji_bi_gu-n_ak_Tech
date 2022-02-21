// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';

// ignore: unused_import
import 'nouvelle_page.dart' show NouvellePage;
// ignore: unused_import
import 'Backend.dart';

class MySleekSliders extends StatelessWidget {
  const MySleekSliders({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SleekSlider(),
    );
  }
}

var donnee = sendRequest();

class SleekSlider extends StatelessWidget {


  Widget humidSolSlider = SleekCircularSlider(
    appearance: CircularSliderAppearance(
     customColors: CustomSliderColors(trackColor:  Colors.white,progressBarColors:
     [Colors.green, Colors.yellow, Colors.redAccent],shadowMaxOpacity: 20.0),
     infoProperties: InfoProperties(topLabelText: 'Humidité au sol'),
    ),
    initialValue: donnee["hs"],
    onChange: (double value){
      // ignore: avoid_print
      print(value);
    },
  );

  Widget humidAirSlider = SleekCircularSlider(
    appearance: CircularSliderAppearance(
     customColors: CustomSliderColors(trackColor:  Colors.white,progressBarColors:
     [Colors.green, Colors.yellow, Colors.redAccent],shadowMaxOpacity: 20.0),
     infoProperties: InfoProperties(topLabelText: "Humidité de l'air."),
    ),
    initialValue: donnee["ha"],
    onChange: (double value){
      // ignore: avoid_print
      print(value);
    },
  );

  Widget tempSlider = SleekCircularSlider(
    appearance: CircularSliderAppearance(
     customColors: CustomSliderColors(trackColor:  Colors.white,progressBarColors:
     [Colors.green, Colors.yellow, Colors.redAccent ],shadowMaxOpacity: 20.0),
     infoProperties: InfoProperties(topLabelText: "Temperature"),
    ),
    initialValue: donnee["temp"],
    onChange: (double value){
      // ignore: avoid_print
      print(value);
    },
  );
  Widget lumSlider = SleekCircularSlider(
    appearance: CircularSliderAppearance(
     customColors: CustomSliderColors(trackColor: Colors.white,progressBarColors:
     [Colors.green, Colors.yellow, Colors.redAccent],shadowMaxOpacity: 20.0),
     infoProperties: InfoProperties(topLabelText: 'Luminosité'),
    ),
    initialValue: donnee["lum"],
    onChange: (double value){
      // ignore: avoid_print
      print(value);
    },
  );

  @override
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
               'Tableau de bord',
                         textAlign: TextAlign.left,
                         style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'RobotoMono'
                         ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
             Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         humidAirSlider,
                         humidSolSlider
                       ],
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         tempSlider,
                         lumSlider
                       ],
                     )
                   ],
                 )
    
    

            /*slider,
            const SizedBox(height: 5),
            humidSolSlider,
            const SizedBox(height: 5,),
            tempSlider*/

          ],
        ),
      ),
    );

  }
}
 
  


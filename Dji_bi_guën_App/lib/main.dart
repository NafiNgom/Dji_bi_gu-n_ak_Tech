import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
// ignore: unused_import
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

// ignore: unused_import
import 'nouvelle_page.dart';
import 'Tableau_de_bord.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Colors.green,
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
              child: Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.width / 1.7,
                 color: Colors.grey,
                 // padding: EdgeInsets.only(left: 45.0),
                 alignment: AlignmentDirectional.center,
                 child: Text(
                   'Ma Plant!',
                   style: TextStyle(
                     // backgroundColor: Colors.yellow,
                     fontSize: 27.3
                   ),
                 ),
              )
            ),
            Padding(padding: EdgeInsets.all(22.0)),
            Card(
               child: Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  padding: EdgeInsets.all(12.0),
                 // margin: EdgeInsets.all(12.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     const Icon(
                       Icons.  storage,
                      
                     ),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SleekSlider()));
                      }, 
                      child: const Text(
                         'Tableau de bord',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                            fontSize: 22.4
                         ),
                      ),
                      ),
                     
                     
                     Text('wifi', style: TextStyle(color: Colors.white),)
                   ],
                 
                 ),
               )

            ),
            Card(
               child: Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  padding: EdgeInsets.all(12.0),
                 // margin: EdgeInsets.all(12.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Icon(
                       Icons.  storage,
                      
                     ),
                   TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NouvellePage()));
                      },
                      child: const Text(
                         'R??glage',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                            fontSize: 22.4
                         ),
                      ),
                   ),
                   
                     Text('wifi', style: TextStyle(color: Colors.white),)
    ],
                 
                 
                 ),
               )

            ),
           Card(
               child: Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  padding: EdgeInsets.all(12.0),
                 // margin: EdgeInsets.all(12.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Icon(
                       Icons.  storage,
                      
                     ),
                   
                     Text(
                         'A Propos',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                            fontSize: 22.4
                         ),
                      ),
                     
                     Text('wifi', style: TextStyle(color: Colors.white),)
                   ],
                 
                 ),
               )

            ),
          ],
        ),
      ),
    );
  }
  void versNouvellePage(){
    
    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
    return new NouvellePage();
    }));
  }
}

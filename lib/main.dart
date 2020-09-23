import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Center(
              child: Text('Random wallpaper generator')
          ),
          backgroundColor: Colors.blue,





        ),
        body: wallpaper(),

      ),
    ),
  );
}
// ignore: camel_case_types
class wallpaper extends StatefulWidget {


  @override
  _wallpaperState createState() => _wallpaperState();
}

// ignore: camel_case_types
class _wallpaperState extends State<wallpaper> {
  int tony=5;
  int thor=5;
  int chris=5;


  void random(){
    tony=Random().nextInt(9)+1;
    thor=Random().nextInt(8)+1;
    chris=Random().nextInt(7)+1;


  }

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    random();
                  });
                },
                child: Image(
                  width: double.infinity,
                 image: AssetImage('images/tony$tony.jpg'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    random();
                  });
                },
                child: Image(
                  width: double.infinity,
                  image: AssetImage('images/chris$chris.jpg'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    random();
                  });
                },
                child: Image(
                  width: double.infinity,

                  image: AssetImage('images/thor$thor.jpg'),
                ),
              ),
            ),



          ],



        ) ;
  }
}

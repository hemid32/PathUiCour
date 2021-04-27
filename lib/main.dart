import 'package:flutter/material.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Column(children: [
        ClipPath(
          clipper: CostomPath(),
          child: Container(
            height: 350,
            width:  double.infinity ,
            decoration: BoxDecoration(
              gradient:LinearGradient(
                colors: [Colors.red , Colors.orange] ,
                begin: Alignment.topRight ,
                end:  Alignment.bottomLeft ,
              )
            ),
          ),
        )
      ],)
    );
  }
}


class CostomPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip

    Path path = Path()  ;
    path.lineTo(0, size.height -80 ) ;
    path.quadraticBezierTo(size.width/2, size.height, size.width,size.height -80) ;
    path.lineTo(size.width, 0) ;
    path.close() ;
    return path ;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false  ;
  }

}
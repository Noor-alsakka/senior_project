import 'package:flutter/material.dart';
import 'package:senior_project/Food.dart';
import 'RoomsPage.dart';
import 'Service.dart';
import 'Food.dart';
import 'SpaInfo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return
      ListView(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RoomsPage()));
            },
            child: Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Positioned(
                    child: Image.asset(
                      'assets/image/istockphoto-512882668-612x612.jpg',
                      height: 290,
                      fit: BoxFit.fill,
                      color: Colors.black.withOpacity(0.35),
                      colorBlendMode: BlendMode.darken,
                    ),
                  ),
                  Container(
                    height: 235,
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xFFCBCE91), width: 4)
                    ),
                  ),
                  Positioned(
                      child: Text(
                        'Rooms',
                        style: TextStyle(
                            fontSize: 58,
                            color: Colors.white,
                            fontStyle: FontStyle.italic),
                      )),
                ]),
          ),
        ),
        Padding(padding: EdgeInsets.all(5)),
        Container(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Service()));
            },
            child: Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Positioned(
                    child: Image.asset(
                      'assets/image/service-couverture.jpg',
                      height: 290,
                      fit: BoxFit.fill,
                      color: Colors.black.withOpacity(0.35),
                      colorBlendMode: BlendMode.darken,
                      // fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: 235,
                    width: 360,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xFFCBCE91), width: 4)
                    ),
                  ),
                  Positioned(
                      child: Text(
                        'Service',
                        style: TextStyle(
                            fontSize: 58,
                            color: Colors.white,
                            fontStyle: FontStyle.italic),
                      )),
                ]),
          ),
        ),
        Padding(padding: EdgeInsets.all(5)),
        Container(
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => FoodPage()));
            },
            child: Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Positioned(
                    child: Image.asset(
                      'assets/image/istockphoto-1209739507-612x612.jpg',
                      height: 290,
                      fit: BoxFit.fill,
                      color: Colors.black.withOpacity(0.35),
                      colorBlendMode: BlendMode.darken,
                      // fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: 235,
                    width: 360,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xFFCBCE91), width: 4)
                    ),
                  ),
                  Positioned(
                      child: Text(
                        'Food',
                        style: TextStyle(
                            fontSize: 58,
                            color: Colors.white,
                            fontStyle: FontStyle.italic),
                      )),
                ]),
          ),
        ),
        Padding(padding: EdgeInsets.all(5)),
        Container(
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SpaInfo()));
            },
            child: Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Positioned(
                    child: Image.asset(
                      'assets/image/spa-1low_54_990x660.jpg.webp',
                      color: Colors.black.withOpacity(0.35),
                      colorBlendMode: BlendMode.darken,
                      height: 290,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: 235,
                    width: 360,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xFFCBCE91), width: 4)
                    ),
                  ),
                  Positioned(
                      child: Text(
                        'Spa',
                        style: TextStyle(
                            fontSize: 58,
                            color: Colors.white,
                            fontStyle: FontStyle.italic),
                      )),
                ]),
          ),
        ),
        Padding(padding: EdgeInsets.all(5)),
        Container(
          child: GestureDetector(
            child: Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Positioned(
                    child: Image.asset(
                      'assets/image/IMG_8184.JPG',
                      height: 260,
                      fit: BoxFit.fill,
                      color: Colors.black.withOpacity(0.35),
                      colorBlendMode: BlendMode.darken,
                    ),
                  ),
                  Container(
                    height: 235,
                    width: 360,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xFFCBCE91), width: 4)
                    ),
                  ),
                  Positioned(
                      child: Text(
                        'Transfer',
                        style: TextStyle(
                            fontSize: 58,
                            color: Colors.white,
                            fontStyle: FontStyle.italic),
                      )),
                ]),
          ),
        ),
      ],
    );
  }
}

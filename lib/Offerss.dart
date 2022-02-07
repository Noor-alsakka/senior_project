import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'MainPage.dart';
import 'Question.dart';
import 'package:color_blindness/color_blindness.dart';

class Offerss extends StatefulWidget {
  const Offerss({Key? key}) : super(key: key);

  @override
  _OfferssState createState() => _OfferssState();
}

class _OfferssState extends State<Offerss> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFE2E2E2),
      child:  SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFE2E2E2),
          body: ListView(
            children: [
              Image.asset(
                'assets/image/tustin-relaxation day.jpg',
                color: Colors.white,
                colorBlendMode: BlendMode.darken,
              ),
              Padding(padding: EdgeInsets.only(top: 50 )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 400,
                        child:
                        Text(
                          'Book now and save 10% at warehouse by The Crystal Hotel',
                          style: TextStyle(
                            color: Color(0xffff0202),
                            fontSize: 24,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Container(
                        width: 400,
                        child:
                        Text(
                          'New',
                          style: TextStyle(
                            color: Color(0xffff0202),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10),
                        child:
                        Container(
                          width: 400,
                          child:
                          Text(
                            'Book now and save 10% at warehouse by The Crystal Hotel',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                    ],
                  )


                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 80),
                      child:
                      GestureDetector(
                        onTap: (){
                          showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title:
                              Row(
                                children: [
                                  Text(
                                    'Confirm Request',
                                    style: TextStyle(
                                      color: Color(0xffff0202),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.done,
                                    color: Color(0xffff0202),

                                  ),
                                ],
                              ),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: <Widget>[
                                    Text(
                                      'Are you sure to confirm request ?',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(
                                      flex: 10,
                                    ),
                                    Row(
                                      children: [
                                        FlatButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              'Cancel',
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 14,
                                              ),
                                            )),
                                        Spacer(),
                                        FlatButton(
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (_) => AlertDialog(
                                                  title:
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        'Done',
                                                        style: TextStyle(
                                                          color: Colors.green,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons.done,
                                                        color: Colors.green,

                                                      ),
                                                    ],
                                                  ),
                                                  content: SingleChildScrollView(
                                                  ),
                                                ),
                                              );
                                              // Navigator.push(context,MaterialPageRoute(builder: (context) => SecondaryStadiumeSignUp() ));
                                            },
                                            child: Text(
                                              'OK',
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 14,
                                              ),
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> Question()));
                        },
                        child: Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.5),
                            color: Color(0xffff0202),
                          ),
                          child:
                          Padding(padding: EdgeInsets.only(top: 8),
                          child:
                          Text(
                            'Book Now',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                          ),

                        ),
                      ),

                      ),



                    ],
                  ),


                ],
              )




            ],
          ),
        ),

      ),




    );
  }
}

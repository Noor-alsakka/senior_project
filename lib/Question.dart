import 'package:flutter/material.dart';
import 'package:senior_project/Login.dart';
import 'Offerss.dart';
import 'Login.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCBCACA),
      body:Column(
        children :[
           Container(
             height: 650,
            child:
           Image(
                  image: AssetImage('assets/image/smartphones.jpg.jpg'),
                  fit: BoxFit.fitHeight,
                  filterQuality: FilterQuality.high,
                  color: Colors.black.withOpacity(0.5),
                  colorBlendMode: BlendMode.darken,
                ),
              ),
          Padding(
            padding: EdgeInsets.only(top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Signin()));
                },
                child: Container(
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.5),
                    color: Color(0xffff0202),
                  ),
                  child:
                  Padding(padding: EdgeInsets.only(top: 12),
                    child:
                    Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        // fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),

                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                },
                child: Container(
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.5),
                    color: Color(0xffff0202),
                  ),
                  child:
                  Padding(padding: EdgeInsets.only(top: 12),
                    child:
                    Text(
                      'Register',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        // fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),

                ),
              ),
            ],
          ),
          ),
          Padding(padding: EdgeInsets.only(top:10),
          child:
              Container(
                width: 350,
                child:
              Text(
                'you need to sign in before you can use this service .',
                style: TextStyle(
                  color: Color(0xffff0202),
                  fontSize: 20,
                  // fontWeight: FontWeight.bold,
                ),

              ),
              ),

          ),


        ],
      ),
    );
  }
}

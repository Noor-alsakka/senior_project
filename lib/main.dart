import 'package:flutter/material.dart';
import 'Login.dart';
import 'MainPage.dart';
import 'package:video_player/video_player.dart';
import 'Home.dart';
import 'network/api_provider.dart';
import 'package:senior_project/model/login_model.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _username = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  Future<bool> check() async {
    LoginMo loginmo = await ApiProvider.login(_username.text, _password.text);
    print(loginmo.toJson());
      if(loginmo.accessToken!=null&&loginmo.accessToken!.isNotEmpty) return true;
      return false;
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned.fill(
              child: GestureDetector(
                onTap: () {},
                child: Image(
                  image: AssetImage('assets/image/smartphones.jpg.jpg'),
                  fit: BoxFit.fitHeight,
                  filterQuality: FilterQuality.high,
                  color: Colors.black.withOpacity(0.6),
                  colorBlendMode: BlendMode.darken,
                ),
              ),
            ),
            Form(
              key: _formkey,
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      controller: _username,
                      style: TextStyle(color: Colors.white,fontStyle: FontStyle.normal),
                      cursorColor: Colors.white,
                      autocorrect: false,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Username";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.keyboard,
                          color: Colors.white60,
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.white60,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0.0,
                            color: Colors.white,
                          ),
                        ),
                        // enabledBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(
                        //     color: Colors.white,
                        //     // width: 100.0,
                        //   ),
                        // ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(30)),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      obscureText: true,
                      controller: _password,
                      style: TextStyle(color: Colors.white,fontStyle: FontStyle.normal),
                      cursorColor: Colors.white,
                      autocorrect: false,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Password";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.white60,
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.white60,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0.0,
                            color: Colors.white,
                          ),
                        ),
                        // enabledBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(
                        //     color: Colors.white,
                        //     // width: 100.0,
                        //   ),
                        // ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(30)),
                  Container(
                    width: 300,
                    child: FlatButton(
                      height: 50,
                      color: Color(0xffff0202),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate() == false ){
                          return;
                        }
                        else
                        check().then((value) {
                          if (_formkey.currentState!.validate() && value == true ) {
                            globalEmail = _username.text;
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => MainPage()));
                          }


                        });
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 15),),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account ?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                        },
                        child:
                        Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ) ,
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      );
  }
}


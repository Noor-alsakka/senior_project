import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'MainPage.dart';
import 'Custom_checkbox.dart';
import 'package:senior_project/Custom_checkbox.dart';
import 'package:senior_project/model/Register_model.dart';
import 'network/api_provider.dart';
import 'main.dart';
import 'model/Register_model.dart';

String? globalEmail;
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController fname = new TextEditingController();
  TextEditingController lname = new TextEditingController();
  TextEditingController mobileNumber = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();

  bool isChecked =false;

  // @override
  // void initState() {
  //   super.initState();
  //   senduser();
  // }

  Future <void> senduser()async {
    Registermodel user = await ApiProvider.register(fname.text,lname.text,mobileNumber.text,email.text,password.text);
    print("apiii done");
    setState(() {
      // fname = user.fname.toString() as TextEditingController ;
      // print(fname);

    });
  }


  @override
  Widget build(BuildContext context) {
    // bool isChecked =Custom_Checkbox(K) ;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 25),
                child:
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child:Icon(
                    Icons.arrow_back,
                    color: Color(0xFFFF0202),
                    size: 48,
                  ),
                ),

              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, left: 8, right: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // padding: EdgeInsets.all(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 44,
                        color: Color(0xFFFF0202),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Create an account to use the Palace application with out limits',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 30)),
                      TextFormField(
                        controller: fname,
                        autocorrect: false,
                        textInputAction: TextInputAction.next,
                        validator: (value){
                          if(value!.isEmpty) {
                            return "Enter First name";
                          }
                          else
                          {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.keyboard),
                          hintText: 'First Name',
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffff0202),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              // width: 100.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      TextFormField(

                        controller: lname,
                        autocorrect: false,
                        textInputAction: TextInputAction.next,
                        validator: (value){
                          if(value!.isEmpty) {
                            return "Enter Last name";
                          }
                          else
                          {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.keyboard),
                          hintText: 'Last Name',
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffff0202),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              // width: 100.0,
                            ),
                          ),
                        ),

                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(children: [
                        Container(
                          color: Colors.white,
                          height: 58,
                          width: 90,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '  +963',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(3)),
                        Container(
                          width: 319,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            autocorrect: false,
                            textInputAction: TextInputAction.next,
                            validator: (value){
                              if(value!.isEmpty) {
                                return "Enter Mobile number";
                              }
                              else
                              {
                                return null;
                              }

                            },
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.call),
                              hintText: 'Mobile Number',
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffff0202),
                                  )),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      TextFormField(
                        controller: email,
                        validator: (value){
                          if(value!.isEmpty) {
                            return "Enter Email";
                          }
                          else
                          {
                            return null;
                          }

                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.email),
                          hintText: 'Email',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFF0202),
                            ),
                          ),
                        ),


                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        obscureText: true,
                        controller: password,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.vpn_key),

                          hintText: 'Password',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFF0202),
                            ),
                          ),
                        ),
                        validator: (value){
                          if(value!.isEmpty) {
                            return "Enter Password";
                          }
                          else
                          {
                            return null;
                          }

                        },
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      TextFormField(
                        obscureText: true,
                        controller: _confirmPass,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye),
                          hintText: 'Confirm Password',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFF0202),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Password";
                          }
                          if (password.text != _confirmPass.text ){
                            return "Password don't match";
                          }
                          else {
                            return null;
                          }
                        }

    ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                              Container(
                                    child: Custom_Checkbox(
                                      isChecked: isChecked,
                                      onChange: (value){
                                        isChecked = value;
                                      },
                                    ),
                                    // isChecked: isChecked,
                                    // onChange: (value){
                                    //   isChecked = value;
                                    // },

                              ),
                              Container(
                                child:
                                Text(
                                  ' I approve the transfer of my personal data\n'
                                      ' to the server provides cloud service for\n'
                                      ' the Crystal ',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 40)),
                      Container(
                        height: 50,
                        width: 300,
                        color: Color(0xffff0202),
                        child:
                        FlatButton(
                          height: 50,
                          color: Color(0xffff0202),
                          child: Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {

                            if(_formkey.currentState!.validate() == false || isChecked == false)
                            {
                              return;
                            }
                            else if (_formkey.currentState!.validate() == true && isChecked == true)
                            {
                              senduser().then((value) {
                                globalEmail = email.text;
                                Fluttertoast.showToast(msg: "User registered successfully");
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage()));
                              });
                            }
                          },
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 7)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text(
                              'Already have an account?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=> FirstPage()));
                            },
                            child:Text('Sign in',
                              style: TextStyle(
                                color: Color(0xffff0202),
                                fontSize: 19,
                              ),),
                          ),
                        ]
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

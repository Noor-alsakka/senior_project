import 'package:flutter/material.dart';
import 'Home.dart';

class SpaInfo extends StatefulWidget {
  const SpaInfo({Key? key}) : super(key: key);

  @override
  _SpaInfoState createState() => _SpaInfoState();
}

class _SpaInfoState extends State<SpaInfo> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController Room = new TextEditingController();
  TextEditingController Notes = new TextEditingController();
  int IdService = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffff0202),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            Icon(Icons.spa),
            Text(
              'Spa',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/image/spa-1low_54_990x660.jpg.webp'),
          Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: Room,
                  autocorrect: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Room Number";
                    } else {
                      return null;
                    }
                  },
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.location_on_outlined,
                      color: Color(0xffff0202),
                    ),
                    hintText: 'Room Number',
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
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: TextFormField(
                    controller: Notes,
                    autocorrect: false,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.event_note,
                        color: Color(0xffff0202),
                      ),
                      hintText: 'Notes (Optional)',
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
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              if(_formkey.currentState!.validate() == false){
                return;
              }
              else
                if(_formkey.currentState!.validate() == true ){
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
                }
            },
            child:

            Container(
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.5),
                color: Color(0xffff0202),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  'Submit',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:senior_project/network/api_provider.dart';
import 'Food.dart';
import 'RecipeCard.dart';
import 'model/all_foods.dart';
import 'model/requist_food.dart';
import 'network/api_provider.dart';

class FoodInfo extends StatefulWidget {
  final Food food;
  const FoodInfo({Key? key, required this.food}) : super(key: key);
  @override
  _FoodInfoState createState() => _FoodInfoState();
}

class _FoodInfoState extends State<FoodInfo> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController Note = new TextEditingController();
  TextEditingController Room = new TextEditingController();



  Future<void> order() async {
    FoodOrder foodorder = await ApiProvider.requestFood(Room.text, _counter.toString(),Note.text );
    setState(() {

    });
  }

  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementConter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      } else if (_counter == 0) {
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xffff0202),
                    size: 30,
                  ))
            ],
          ),
          Container(
            width: 500,
            height: 300,
            child: Image.network(widget.food.img!),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.food.title ?? '',
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Enter notes here ..',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    width: 400,
                    height: 200,
                    child: ListView(
                      children: [
                        Form(
                          key: _formkey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: Note,
                                autocorrect: false,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.note_alt_outlined,
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
                                padding: EdgeInsets.only(top: 32.0),
                                child: GestureDetector(
                                  onTap: () {
                                    // ApiProvider.submitFood();
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 200,
                                    color: Color(0xffff0202),
                                    child: FlatButton(

                                      height: 50,
                                      color: Color(0xffff0202),
                                      child: Text(
                                        'Submit',
                                        style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white,
                                        ),
                                      ),
                                      onPressed: () {
                                        if (_formkey.currentState!.validate() ==
                                                false ||
                                            _counter == 0) {
                                          print('false');
                                          return;
                                        } else if (_formkey.currentState!
                                                    .validate() ==
                                                true &&
                                            _counter > 0) {
                                          showDialog(
                                            context: context,
                                            builder: (_) => AlertDialog(
                                              title: Row(
                                                children: [
                                                  Text(
                                                    'Confirm Request',
                                                    style: TextStyle(
                                                      color: Color(0xffff0202),
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Spacer(
                                                      flex: 10,
                                                    ),
                                                    Row(
                                                      children: [
                                                        FlatButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Text(
                                                              'Cancel',
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.blue,
                                                                fontSize: 14,
                                                              ),
                                                            )),
                                                        Spacer(),
                                                        FlatButton(
                                                            onPressed: () {
                                                              order();
                                                              showDialog(
                                                                context:
                                                                    context,
                                                                builder: (_) =>
                                                                    AlertDialog(
                                                                  title: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'Done',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.green,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .done,
                                                                        color: Colors
                                                                            .green,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  content:
                                                                      SingleChildScrollView(),
                                                                ),
                                                              );
                                                              // Navigator.push(context,MaterialPageRoute(builder: (context) => SecondaryStadiumeSignUp() ));
                                                            },
                                                            child: Text(
                                                              'OK',
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.blue,
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
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(
            flex: 2,
          ),
          FloatingActionButton(
            backgroundColor: Color(0xffff0202),
            onPressed: _decrementConter,
            tooltip: 'Decrement',
            child: Icon(Icons.minimize),
          ),
          Spacer(flex: 10),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          Spacer(
            flex: 10,
          ),
          FloatingActionButton(
            backgroundColor: Color(0xffff0202),
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}

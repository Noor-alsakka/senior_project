// ignore: import_of_legacy_library_into_null_safe
// import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:senior_project/network/api_provider.dart';
import 'MainPage.dart';
import 'WakeUp.dart';

class Service extends StatefulWidget {
  const Service({Key? key}) : super(key: key);

  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 40,
                  color: Color(0xffff0202),
                ),
              ),
            ],
          ),
          Stack(
            fit: StackFit.loose,
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: 200,
                child:
                // Padding(padding: EdgeInsets.only(top: 90),
                //   child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'OUR SERVICES',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              // ),
              Positioned(
                child:
                // Padding(padding: EdgeInsets.only(top: 30),
                //   child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 400,
                      child: Text(
                        'We are always ready to help you . you can request whatever you wish to make your visit perfect . ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          // fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Icon(
                  Icons.room_service_outlined,
                  size: 300,
                  color: Colors.grey.withOpacity(0.2),
                ),
              ),

              // ),
            ],
            overflow: Overflow.visible,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'IN-CRYSTAL REQUEST',
                  style: TextStyle(
                    color: Color(0xffff0202),
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  print('timer');
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: SizedBox(
                                  height: 200,
                                  child: CupertinoTimerPicker(
                                    onTimerDurationChanged: (value) {
                                      print(value.toString());
                                    },
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        // ExtendedNavigator.root.pop();
                                      },
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(color: Colors.red),
                                      )),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        // ExtendedNavigator.root.pop();
                                      },
                                      child: Text('Submit')),
                                ],
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> PreferencesSelectTime() ));
                },
                onLongPress: () {},
                child: Container(
                  // decoration: BoxDecoration(
                  //   border : Border(
                  //   left: BorderSide(
                  //     color: Colors.red,
                  //     width: 6,
                  //   ),
                  // ),
                  // ),
                  // color: Colors.white,
                  height: 210,
                  width: 210,
                  child: Image.asset(
                    'assets/image/Screenshot 2022-01-11 at 3.03.01 AM.png',
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  requestService(1);
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                  // color: Colors.white,
                  height: 210,
                  width: 210,
                  child: Image.asset(
                    'assets/image/Screenshot 2022-01-11 at 3.08.27 AM.png',
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  requestService(2);
                },
                onLongPress: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                  // color: Colors.white,
                  height: 190,
                  width: 190,
                  child: Image.asset(
                    'assets/image/Screenshot 2022-01-11 at 3.17.03 AM.png',
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  requestService(6);
                },
                onLongPress: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                  // color: Colors.white,
                  height: 190,
                  width: 190,
                  child: Image.asset(
                    'assets/image/porter service.png',
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  requestService(5);
                },
                onLongPress: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                  // color: Colors.white,
                  height: 190,
                  width: 190,
                  child: Image.asset(
                    'assets/image/taxi .png',
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  requestService(3);
                },
                onLongPress: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                  // color: Colors.white,
                  height: 190,
                  width: 190,
                  child: Column(
                    children: [
                      Icon(
                        Icons.home_repair_service_outlined,
                        size: 100,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'REPAIR',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 28),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  requestService(int serviceId) {
    ApiProvider.getPrice(serviceId).then((value) => value).then((value) {
      showDialog(
          context: context,
          builder: (context) {
            final controller = TextEditingController();
            return Dialog(
              child: Container(
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Description',
                      style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 20),
                      child: TextFormField(
                        controller: controller,
                        minLines: 5,
                        maxLines: 5,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Price:'),
                        Text(value.toString()),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        ApiProvider.requestService(serviceId, controller.text).then((value) {
                          Navigator.pop(context);
                          Fluttertoast.showToast(msg: 'Requested successfully');
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.red,
                        ),
                        padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                        child: Text('Submit'),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
    });
  }
}

import 'package:flutter/painting.dart';
import 'MainPage.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  TextEditingController firstname = new TextEditingController();
  TextEditingController lastname = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffff0202),
        automaticallyImplyLeading: false,
        title: Text(
          'Contact Us',
          textAlign: TextAlign.end,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(height: 20),
            // Spacer(flex: 1),
            Form(
                child: Column(
              children: [
                TextFormField(
                  autocorrect: false,
                  controller: firstname,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.keyboard),
                    hintText: 'First name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                TextFormField(
                  autocorrect: false,
                  controller: lastname,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.keyboard),
                    hintText: 'Last name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Row(children: [
                  Container(
                    width: 100,
                    child: TextFormField(
                      enabled: false,
                      autocorrect: false,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        // suffixIcon: Icon(Icons.keyboard),
                        hintText: '+963',
                        hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(3)),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      autocorrect: false,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.call),
                        hintText: 'Mobile Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  padding: const EdgeInsets.only(left: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF020200)),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write message here',
                    ),
                    // textAlign: TextAlign.center,
                  ),
                ),
              ],
            )),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: Colors.white,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    spreadRadius: 1,
                  )
                ],
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Color(0xffff0202),
              ),
              child: Center(
                child: Text(
                  'Send',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}

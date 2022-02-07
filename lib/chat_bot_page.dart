import 'package:flutter/material.dart';

class ChatBotPage extends StatefulWidget {
  const ChatBotPage({Key? key}) : super(key: key);

  @override
  _ChatBotPageState createState() => _ChatBotPageState();
}

class _ChatBotPageState extends State<ChatBotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffff0202),
        automaticallyImplyLeading: false,
        title: Text(
          'Chat Bot',
          textAlign: TextAlign.end,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView.builder(
                  itemCount: 24,
                  itemBuilder: (context, index) {
                    return Align(
                      alignment: index % 2 == 0
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Container(
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFCBCE91),
                        ),
                        padding: EdgeInsets.all(25),
                        child: Text(
                          index % 2 == 0 ? 'A Question (?)' : 'An Answer',
                          style: TextStyle(
                            color: Color(0xFF76528B),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Container(
            height: 90,
            color: Color(0xFFCBCE91),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF76528B),
                        ),
                        child: Center(
                          child: Text(
                            'Yes',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFCBCE91),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF76528B),
                        ),
                        child: Center(
                          child: Text(
                            'No',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFCBCE91),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF76528B),
                        ),
                        child: Center(
                          child: Text(
                            'Maybe',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFCBCE91),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

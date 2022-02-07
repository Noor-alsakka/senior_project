import 'package:flutter/material.dart';
import 'package:senior_project/Offerss.dart';
import 'MainPage.dart';

class Offers extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffff0202),
        automaticallyImplyLeading: false,
        title: Text(
          'Offers',
          textAlign: TextAlign.end,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: new NewsfeedWidget(title: 'News Feed'),
    );
  }
}

class News {
  // final String _imgpath1 = 'assets/image/spa-1low_54_990x660.jpg.webp';
  // Image _img1 = Image.asset('assets/image/spa-1low_54_990x660.jpg.webp');
  // Image _img2 = Image.asset('assets/image/spa-1low_54_990x660.jpg.webp');
  DateTime _dt;
  String _title;
  String _text;

  News(
      // this._img1,this._img2,
      this._dt,
      this._title,
      this._text);
}

class NewsCard extends StatefulWidget {
  News _news;

  NewsCard(this._news);

  @override
  _NewsCardState createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Card(
            child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Image(image: ),
                    // Image.network(('https://images.app.goo.gl/piXtBuzei5VTMF2Z7')),
                    // Image(image: "${_news._img}"),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Offerss()));
                      },
                      child: Image.asset(
                          'assets/image/istockphoto-1286682876-170667a.jpg'),
                    ),

                    // Image.network("https://www.bbc.co"
                    //     ".uk/news/special/2015/newsspec_10857/bbc_news_logo.png?cb=1"),
                    Padding(
                        padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                        child: Text(
                          "${widget._news._dt.month}//${widget._news._dt.day}/${widget._news._dt.year}",
                          style: TextStyle(
                              fontSize: 10.0, fontStyle: FontStyle.italic),
                        )),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "${widget._news._title}",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFCBCE91),
                          shadows: [
                            BoxShadow(
                              color: Color(0xFFCBCE91),
                              spreadRadius: 5,
                              blurRadius: 15,
                            )
                          ]
                        ),
                      ),
                    ),
                    Text(
                      "${widget._news._text}",
                      maxLines: 2,
                      style: TextStyle(fontSize: 14.0),
                      overflow: TextOverflow.fade,
                    ),
                    Row(children: [
                      FlatButton(child: Text("Share"), onPressed: () => {}),
                      FlatButton(
                          child: Text("Bookmark"),
                          onPressed: () => {
                                // TextTrackList.changeEvent,
                              }),
                      FlatButton(child: Text("Link"), onPressed: () => {})
                    ])
                  ],
                ))));
  }
}

class NewsfeedWidget extends StatelessWidget {
  NewsfeedWidget({Key? key, required this.title}) : super(key: key);

  // final Image img;
  final String title;
  List<News> _newsList = [
    News(
        // Image.asset($'_imgpath1'),
        DateTime(2018, 12, 1),
        "Book now and save 10% at warehouse by The Crystal Hotel",
        "Click for" + " more details."),
    News(
        // Image.asset('assets/image/stad.jpg'),
        DateTime(2019, 1, 12),
        "Book now and save 10% at warehouse by The Crystal Hotel",
        "Click for" + " more details."),
    News(
        // Image.asset('assets/image/istockphoto-1286682876-170667a.jpg'),
        DateTime(2019, 2, 12),
        "Book now and save 10% at warehouse by The Crystal Hotel",
        "Click for" + " more details."),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> newsCards = _newsList.map((news) => NewsCard(news)).toList();
    return ListView(padding: EdgeInsets.all(20.0), children: newsCards);
  }
}

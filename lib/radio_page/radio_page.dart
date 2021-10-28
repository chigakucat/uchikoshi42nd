import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
import 'package:ufoff/group_list_page/pdf_view_page.dart';

class asanoRadio extends StatefulWidget {
  Color _color;
  String title;
  String radio_url;

  asanoRadio(this._color, this.title, this.radio_url);

  @override
  _RadioState createState() => _RadioState(_color, title, radio_url);
}

class _RadioState extends State<asanoRadio> {
  Color _color;
  String title;
  String radio_url;
  Uri pdfURL;

  _RadioState(this._color, this.title, this.radio_url);

  @override
  initState() {
    super.initState();
  }

  void playYoutubeVideoEdit() {
    FlutterYoutube.onVideoEnded.listen((onData) {
      //perform your action when video playing is done
    });

    FlutterYoutube.playYoutubeVideoByUrl(
      apiKey: "<API_KEY>",
      videoUrl: radio_url,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(65.0),
          child: AppBar(
            backgroundColor: _color,
            leading: SizedBox(
              width: 20,
              height: 20,
              child: IconButton(
                padding: EdgeInsets.only(
                  top: 10.0,
                  left: 15.0,
                ),
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'SourceHanSansJP-Normal',
                ),
              ),
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 10,
            ),
            Container(
              height: 110,
              width: 300,
              child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/radio%2Fs-kuro(huchiari).png?alt=media&token=7681812d-d967-4d31-82c8-0bc6675de5b9'),
            ),
            Container(
              height: 20,
            ),
            Container(
              height: 60,
              width: 100,
              child: ElevatedButton(
                child: Text(
                  'アーカイブリスト',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SourceHanSansJP-Normal',
                      fontSize: 25),
                ),
                style: ElevatedButton.styleFrom(
                  primary: _color,
                ),
                onPressed: () async {
                  final document = await FirebaseFirestore.instance
                      .collection('radio')
                      .doc('pdf')
                      .get();
                  title = '${document['title']}';
                  pdfURL = Uri.parse('${document['pdfURL']}');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PDF(
                              _color, title, pdfURL)));
                },
              ),
            ),
            Container(
              height: 300,
              width: 500,
              child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/radio%2Fs-%E7%95%AA%E7%B5%84%E8%A1%A81%EF%BC%88%E8%A8%82%E6%AD%A3%EF%BC%89.jpg?alt=media&token=a8ce3f07-63d7-41ce-bb56-aea6b2b16685'),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: _color),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      '上のボタンから\nアーカイブを聴取できます。',
                      style: TextStyle(
                        fontFamily: 'SourceHanSansJP-Normal',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

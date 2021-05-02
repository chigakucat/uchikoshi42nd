import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

class Youtube extends StatefulWidget {
  Color _color;
  String title;
  String youtube_url;
  Youtube(this._color, this.title, this.youtube_url);
  @override
  _YoutubeState createState() => _YoutubeState(_color, title, youtube_url);
}

class _YoutubeState extends State<Youtube> {
  Color _color;
  String title;
  String youtube_url;
  _YoutubeState(this._color, this.title, this.youtube_url);

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
      videoUrl: youtube_url,
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
                ),
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ElevatedButton(
                    child: Text(
                      '再生する',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: _color,
                    ),
                    onPressed: playYoutubeVideoEdit),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

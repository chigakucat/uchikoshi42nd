import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Web extends StatelessWidget {
  Color _color;
  String title;
  String url;
  Web(this._color, this.title, this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: WebView(
        initialUrl: url,
      ),
    );
  }
}

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
        preferredSize: Size.fromHeight(86.0),
        child: AppBar(
          backgroundColor: _color,
          leading: SizedBox(
            width: 20,
            height: 20,
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 20.0,
                right: 16.0,
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
      body: WebView(
        initialUrl: url,
      ),
    );
  }
}

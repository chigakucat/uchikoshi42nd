import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:http/http.dart' as http;

class PDF extends StatefulWidget {
  Color _color;
  String title;
  String url;
  PDF(this._color, this.title, this.url);

  @override
  _PDFState createState() => _PDFState(_color, title, url);
}

class _PDFState extends State<PDF> {
  Color _color;
  String urlPDFPath;
  String title;
  String url;
  _PDFState(this._color, this.title, this.url);

  @override
  void initState() {
    super.initState();

    getFileFromUrl(url).then((f) {
      setState(() {
        urlPDFPath = f.path;
        print(urlPDFPath);
      });
    });
  }

  Future<File> getFileFromUrl(String url) async {
    try {
      var data = await http.get(url);
      var bytes = data.bodyBytes;
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/mypdfonline.pdf");

      File urlFile = await file.writeAsBytes(bytes);
      return urlFile;
    } catch (e) {
      throw Exception("Error opening url file");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        body: Container(
          child: Center(
            child: Builder(
              builder: (context) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    color: _color,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '「${title}」を開く',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (urlPDFPath != null) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PdfViewPage(title, path: urlPDFPath)));
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
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
                          Text('上のボタンを押してPDFが表示されない場合は'),
                          Text('このページに一度戻り'),
                          Text('もう一度上のボタンを押してみてください。')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PdfViewPage extends StatefulWidget {
  String title;
  final String path;

  PdfViewPage(this.title, {Key key, this.path}) : super(key: key);
  @override
  _PdfViewPageState createState() => _PdfViewPageState(title);
}

class _PdfViewPageState extends State<PdfViewPage> {
  String title;
  int _totalPages = 0;
  bool pdfReady = false;
  PDFViewController _pdfViewController;
  _PdfViewPageState(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86.0),
        child: AppBar(
          backgroundColor: Colors.black.withOpacity(0.3),
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
      body: Stack(
        children: <Widget>[
          PDFView(
            filePath: widget.path,
            autoSpacing: true,
            enableSwipe: true,
            pageSnap: true,
            swipeHorizontal: true,
            nightMode: false,
            onError: (e) {
              print(e);
            },
            onRender: (_pages) {
              setState(() {
                _totalPages = _pages;
                pdfReady = true;
              });
            },
            onViewCreated: (PDFViewController vc) {
              _pdfViewController = vc;
            },
            onPageChanged: (int page, int total) {
              setState(() {});
            },
            onPageError: (page, e) {},
          ),
          !pdfReady
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Offstage()
        ],
      ),
    );
  }
}

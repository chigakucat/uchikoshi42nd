import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';
import 'package:ufoff/ground_sky_page/ground_sky_page.dart';
import 'package:ufoff/group_list_page/biology_list_page.dart';
import 'package:ufoff/group_list_page/pdf_list_page.dart';
import 'package:ufoff/group_list_page/pdf_view_page.dart';
import 'package:ufoff/panorama_page/contents/enddrawer.dart';
import 'package:ufoff/panorama_page/contents/location.dart';
import 'package:ufoff/panorama_page/panorama_page_model.dart';
import 'package:ufoff/quiz_view_page/quiz_list_page.dart';
import 'package:ufoff/web_view_page/web_view_page.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PanoramaPageZero extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String imageURL;
  String location;
  double direction;
  String o;
  String p;
  String g;
  String b;
  String sc;
  String title;
  String backURL;
  String webURL;
  String youtubeURL;
  Uri pdfURL;
  PanoramaPageZero(this.imageURL, this.location, this.o, this.p, this.g, this.b,
      this.direction);

  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return ChangeNotifierProvider<PanoramaPageModel>(
      create: (_) => PanoramaPageModel(),
      child: Scaffold(
        key: _scaffoldKey,
        drawerEdgeDragWidth: 0,
        endDrawer: EndDrawer(),
        body: Consumer<PanoramaPageModel>(builder: (context, model, child) {
          return Stack(
            children: <Widget>[
              Panorama(
                sensitivity: 2,
                longitude: direction,
                animSpeed: 0,
                child: Image.network(imageURL),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 43.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: Container(
                        child: IconButton(
                          tooltip: 'パンフレット',
                          icon: Icon(
                            Icons.book,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            _scaffoldKey.currentState.openEndDrawer();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Location(location),
              Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: SizedBox(
                        width: 130,
                        height: 130,
                        child: Icon(
                          Icons.adjust,
                          color: Colors.white70.withOpacity(0.3),
                          size: 125,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: SizedBox(
                        width: 130,
                        height: 130,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(),
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: ElevatedButton(
                                  child: Text(
                                    'O',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.deepOrangeAccent,
                                    elevation: 16.0,
                                  ),
                                  onPressed: () async {
                                    model.startLoading();
                                    if (o == null) {
                                      model.endLoading();
                                    } else {
                                      final document = await FirebaseFirestore.instance
                                          .collection('images')
                                          .doc(o)
                                          .get();
                                      sc = '${document['sc']}';
                                      if (sc == '0') {
                                        final SharedPreferences prefs =
                                            await SharedPreferences
                                                .getInstance();
                                        prefs.setString('my_string', o);
                                        imageURL = '${document['imageURL']}';
                                        location = '${document['location']}';
                                        o = '${document['o']}';
                                        p = '${document['p']}';
                                        g = '${document['g']}';
                                        b = '${document['b']}';
                                        direction = document['fo'];
                                        model.endLoading();
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PanoramaPageZero(
                                                    imageURL,
                                                    location,
                                                    o,
                                                    p,
                                                    g,
                                                    b,
                                                    direction),
                                            fullscreenDialog: true,
                                          ),
                                        );
                                      } else if (sc == '2') {
                                        title = '${document['title']}';
                                        model.endLoading();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PDFListPage(
                                                        Colors.deepOrangeAccent,
                                                        title,
                                                        o)));
                                      } else if (sc == '3') {
                                        title = '${document['title']}';
                                        webURL = '${document['webURL']}';
                                        model.endLoading();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Web(
                                                    Colors.deepOrangeAccent,
                                                    title,
                                                    webURL)));
                                      } else if (sc == '4') {
                                        model.endLoading();
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return SimpleDialog(
                                          title: Text(
                                            'error',
                                            style: TextStyle(
                                                color: Colors.deepOrangeAccent),
                                          ),
                                          children: <Widget>[
                                            SimpleDialogOption(
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child: Text(
                                                'ただいまサポートしていない機能です。',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                      } else if (sc == '5') {
                                        title = '${document['title']}';
                                        pdfURL = Uri.parse('${document['pdfURL']}');
                                        model.endLoading();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => PDF(
                                                    Colors.deepOrangeAccent,
                                                    title,
                                                    pdfURL)));
                                      } else if (sc == '6') {
                                        model.endLoading();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    QuizListPage(Colors
                                                        .deepOrangeAccent)));
                                      } else if (sc == '7') {
                                        title = '${document['title']}';
                                        model.endLoading();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    BiologyListPage(
                                                        Colors.deepOrangeAccent,
                                                        title,
                                                        o)));
                                      } else if (sc == '8') {
                                        imageURL = '${document['imageURL']}';
                                        location = '${document['location']}';
                                        o = '${document['o']}';
                                        p = '${document['p']}';
                                        g = '${document['g']}';
                                        b = '${document['b']}';
                                        model.endLoading();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => GroundSky(
                                                    imageURL,
                                                    location,
                                                    o,
                                                    p,
                                                    g,
                                                    b)));
                                      } else {
                                        model.endLoading();
                                      }
                                    }
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: ElevatedButton(
                                        child: Text(
                                          'G',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Color.fromRGBO(93, 255, 43, 1),
                                          elevation: 16.0,
                                        ),
                                        onPressed: () async {
                                          model.startLoading();
                                          if (g == null) {
                                            model.endLoading();
                                          } else {
                                            final document = await FirebaseFirestore
                                                .instance
                                                .collection('images')
                                                .doc(g)
                                                .get();
                                            sc = '${document['sc']}';
                                            if (sc == '0') {
                                              final SharedPreferences prefs =
                                                  await SharedPreferences
                                                      .getInstance();
                                              prefs.setString('my_string', g);
                                              imageURL =
                                                  '${document['imageURL']}';
                                              location =
                                                  '${document['location']}';
                                              o = '${document['o']}';
                                              p = '${document['p']}';
                                              g = '${document['g']}';
                                              b = '${document['b']}';
                                              direction = document['fg'];
                                              model.endLoading();
                                              Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      PanoramaPageZero(
                                                          imageURL,
                                                          location,
                                                          o,
                                                          p,
                                                          g,
                                                          b,
                                                          direction),
                                                  fullscreenDialog: true,
                                                ),
                                              );
                                            } else if (sc == '2') {
                                              title = '${document['title']}';
                                              model.endLoading();
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          PDFListPage(
                                                              Color.fromRGBO(93,
                                                                  255, 43, 1),
                                                              title,
                                                              g)));
                                            } else if (sc == '3') {
                                              title = '${document['title']}';
                                              webURL = '${document['webURL']}';
                                              model.endLoading();
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => Web(
                                                          Color.fromRGBO(
                                                              93, 255, 43, 1),
                                                          title,
                                                          webURL)));
                                            } else if (sc == '4') {
                                              model.endLoading();
                                                                                 showDialog(
                                      context: context,
                                      builder: (context) {
                                        return SimpleDialog(
                                          title: Text(
                                            'error',
                                            style: TextStyle(
                                                color: Colors.deepOrangeAccent),
                                          ),
                                          children: <Widget>[
                                            SimpleDialogOption(
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child: Text(
                                                'ただいまサポートしていない機能です。',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                            } else if (sc == '5') {
                                              title = '${document['title']}';
                                              pdfURL = Uri.parse('${document['pdfURL']}');
                                              model.endLoading();
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => PDF(
                                                          Color.fromRGBO(
                                                              93, 255, 43, 1),
                                                          title,
                                                          pdfURL)));
                                            } else if (sc == '6') {
                                              model.endLoading();
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          QuizListPage(
                                                              Color.fromRGBO(
                                                                  93,
                                                                  255,
                                                                  43,
                                                                  1))));
                                            } else if (sc == '7') {
                                              title = '${document['title']}';
                                              model.endLoading();
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          BiologyListPage(
                                                              Color.fromRGBO(93,
                                                                  255, 43, 1),
                                                              title,
                                                              g)));
                                            } else {
                                              model.endLoading();
                                            }
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: ElevatedButton(
                                        child: Text(
                                          'P',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Color.fromRGBO(205, 43, 255, 1),
                                          elevation: 16.0,
                                        ),
                                        onPressed: () async {
                                          model.startLoading();
                                          if (p == null) {
                                            model.endLoading();
                                          } else {
                                            final document = await FirebaseFirestore
                                                .instance
                                                .collection('images')
                                                .doc(p)
                                                .get();
                                            sc = '${document['sc']}';
                                            if (sc == '0') {
                                              final SharedPreferences prefs =
                                                  await SharedPreferences
                                                      .getInstance();
                                              prefs.setString('my_string', p);
                                              imageURL =
                                                  '${document['imageURL']}';
                                              location =
                                                  '${document['location']}';
                                              o = '${document['o']}';
                                              p = '${document['p']}';
                                              g = '${document['g']}';
                                              b = '${document['b']}';
                                              direction = document['fp'];
                                              model.endLoading();
                                              Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      PanoramaPageZero(
                                                          imageURL,
                                                          location,
                                                          o,
                                                          p,
                                                          g,
                                                          b,
                                                          direction),
                                                  fullscreenDialog: true,
                                                ),
                                              );
                                            } else if (sc == '2') {
                                              title = '${document['title']}';
                                              model.endLoading();
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          PDFListPage(
                                                              Color.fromRGBO(
                                                                  205,
                                                                  43,
                                                                  255,
                                                                  1),
                                                              title,
                                                              p)));
                                            } else if (sc == '3') {
                                              title = '${document['title']}';
                                              webURL = '${document['webURL']}';
                                              model.endLoading();
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => Web(
                                                          Color.fromRGBO(
                                                              205, 43, 255, 1),
                                                          title,
                                                          webURL)));
                                            } else if (sc == '4') {
                                              model.endLoading();
                                                                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return SimpleDialog(
                                          title: Text(
                                            'error',
                                            style: TextStyle(
                                                color: Colors.deepOrangeAccent),
                                          ),
                                          children: <Widget>[
                                            SimpleDialogOption(
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child: Text(
                                                'ただいまサポートしていない機能です。',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
				     }else if (sc == '5') {
                                              title = '${document['title']}';
                                              pdfURL = Uri.parse('${document['pdfURL']}');
                                              model.endLoading();
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => PDF(
                                                          Color.fromRGBO(
                                                              205, 43, 255, 1),
                                                          title,
                                                          pdfURL)));
                                            } else if (sc == '6') {
                                              model.endLoading();
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          QuizListPage(
                                                              Color.fromRGBO(
                                                                  205,
                                                                  43,
                                                                  255,
                                                                  1))));
                                            } else if (sc == '7') {
                                              title = '${document['title']}';
                                              model.endLoading();
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          BiologyListPage(
                                                              Color.fromRGBO(
                                                                  205,
                                                                  43,
                                                                  255,
                                                                  1),
                                                              title,
                                                              p)));
                                            } else {
                                              model.endLoading();
                                            }
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(),
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: ElevatedButton(
                                  child: Text(
                                    'B',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.lightBlueAccent,
                                    elevation: 16.0,
                                  ),
                                  onPressed: () async {
                                    model.startLoading();
                                    if (b == null) {
                                      model.endLoading();
                                    } else {
                                      final document = await FirebaseFirestore.instance
                                          .collection('images')
                                          .doc(b)
                                          .get();
                                      sc = '${document['sc']}';
                                      if (sc == '0') {
                                        final SharedPreferences prefs =
                                            await SharedPreferences
                                                .getInstance();
                                        prefs.setString('my_string', b);
                                        imageURL = '${document['imageURL']}';
                                        location = '${document['location']}';
                                        o = '${document['o']}';
                                        p = '${document['p']}';
                                        g = '${document['g']}';
                                        b = '${document['b']}';
                                        direction = document['fb'];
                                        model.endLoading();
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PanoramaPageZero(
                                                    imageURL,
                                                    location,
                                                    o,
                                                    p,
                                                    g,
                                                    b,
                                                    direction),
                                            fullscreenDialog: true,
                                          ),
                                        );
                                      } else if (sc == '2') {
                                        title = '${document['title']}';
                                        model.endLoading();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PDFListPage(
                                                        Colors.lightBlueAccent,
                                                        title,
                                                        b)));
                                      } else if (sc == '3') {
                                        title = '${document['title']}';
                                        webURL = '${document['webURL']}';
                                        model.endLoading();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Web(
                                                    Colors.lightBlueAccent,
                                                    title,
                                                    webURL)));
                                      } else if (sc == '4') {
                                        model.endLoading();
                                                                            showDialog(
                                      context: context,
                                      builder: (context) {
                                        return SimpleDialog(
                                          title: Text(
                                            'error',
                                            style: TextStyle(
                                                color: Colors.deepOrangeAccent),
                                          ),
                                          children: <Widget>[
                                            SimpleDialogOption(
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child: Text(
                                                'ただいまサポートしていない機能です。',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                      } else if (sc == '5') {
                                        title = '${document['title']}';
                                        pdfURL = Uri.parse('${document['pdfURL']}');
                                        model.endLoading();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => PDF(
                                                    Colors.lightBlueAccent,
                                                    title,
                                                    pdfURL)));
                                      } else if (sc == '6') {
                                        model.endLoading();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    QuizListPage(Colors
                                                        .lightBlueAccent)));
                                      } else if (sc == '7') {
                                        title = '${document['title']}';
                                        model.endLoading();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    BiologyListPage(
                                                        Colors.lightBlueAccent,
                                                        title,
                                                        b)));
                                      } else {
                                        model.endLoading();
                                      }
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              model.isLoading
                  ? Container(
                      color: Colors.grey.withOpacity(0.7),
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : SizedBox(),
            ],
          );
        }),
      ),
    );
  }
}

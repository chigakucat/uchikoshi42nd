import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ufoff/group_list_page/pdf_list_page.dart';
import 'package:ufoff/panorama_page/contents/enddrawer.dart';
import 'package:ufoff/panorama_page/contents/location.dart';
import 'package:ufoff/panorama_page/panorama_page_zero.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'ground_sky_page_model.dart';

class GroundSky extends StatelessWidget {
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
  String pdfURL;
  GroundSky(this.imageURL, this.location, this.o, this.p, this.g, this.b);

  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return ChangeNotifierProvider<GroundSkyPageModel>(
      create: (_) => GroundSkyPageModel(),
      child: Consumer<GroundSkyPageModel>(builder: (context, model, child) {
        return Scaffold(
          key: _scaffoldKey,
          drawerEdgeDragWidth: 0,
          endDrawer: EndDrawer(),
          body: Stack(
            children: <Widget>[
              Center(child: Image.network(imageURL)),
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
                            /*Padding(
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
                                    final document = await FirebaseFirestore.instance
                                        .collection('images')
                                        .doc(o)
                                        .get();
                                    title = '${document['title']}';
                                    backURL = '${document['backURL']}';
                                    model.endLoading();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                YoutubeListPage(
                                                    Colors.deepOrangeAccent,
                                                    title,
                                                    backURL,
                                                    o)));
                                  },
                                ),
                              ),
                            ),*/
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
                                          final document = await FirebaseFirestore
                                              .instance
                                              .collection('images')
                                              .doc(o)
                                              .get();
                                          title = '${document['title']}';
                                          model.endLoading();
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PDFListPage(
                                                          Color.fromRGBO(
                                                              93, 255, 43, 1),
                                                          title,
                                                          g)));
                                        },
                                      ),
                                    ),
                                  ),
                                  /*Padding(
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
                                          //onPrimary: ,
                                          elevation: 16.0,
                                        ),
                                        onPressed: () async {
                                          model.startLoading();
                                          final document = await FirebaseFirestore
                                              .instance
                                              .collection('images')
                                              .doc(p)
                                              .get();
                                          title = '${document['title']}';
                                          backURL = '${document['backURL']}';
                                          model.endLoading();
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      YoutubeListPage(
                                                          Color.fromRGBO(
                                                              205, 43, 255, 1),
                                                          title,
                                                          backURL,
                                                          p)));
                                        },

                                      ),
                                    ),
                                  ),*/
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
                                    model.endLoading();
                                    final document = await FirebaseFirestore.instance
                                        .collection('images')
                                        .doc(b)
                                        .get();
                                    final SharedPreferences prefs =
                                        await SharedPreferences.getInstance();
                                    prefs.setString('my_string', b);
                                    imageURL = '${document['imageURL']}';
                                    location = '${document['location']}';
                                    o = '${document['o']}';
                                    p = '${document['p']}';
                                    g = '${document['g']}';
                                    b = '${document['b']}';
                                    direction = document['fb'];
                                    model.endLoading();
                                    Navigator.pushAndRemoveUntil(
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
                                        (route) => false);
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
            ],
          ),
        );
      }),
    );
  }
}

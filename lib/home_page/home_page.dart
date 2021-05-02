import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ufoff/panorama_page/panorama_page_zero.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ufoff/panorama_page/contents/grouplist.dart';

class HomePage extends StatelessWidget {
  String startLocation;
  String imageURL;
  String location;
  double direction;
  String o;
  String p;
  String g;
  String b;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          color: Colors.white.withOpacity(0.7),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'UCHIKOSHI',
                                    style: TextStyle(
                                      fontSize: 48,
                                      color: Colors.deepOrangeAccent,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'FES',
                                    style: TextStyle(
                                      fontSize: 48,
                                      color: Color.fromRGBO(93, 255, 43, 1),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'ONLINE',
                                    style: TextStyle(
                                      fontSize: 48,
                                      color: Color.fromRGBO(205, 43, 255, 1),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              SizedBox(
                                width: 300,
                                height: 50,
                                child: ElevatedButton(
                                  child: const Text(
                                    '浅野学園を歩く',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orange,
                                    onPrimary: Colors.white,
                                    shape: const StadiumBorder(),
                                  ),
                                  onPressed: () async {
                                    final SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                    startLocation =
                                        prefs.getString('my_string') ?? '000';
                                    final document =
                                    await FirebaseFirestore.instance
                                        .collection('images')
                                        .doc(startLocation)
                                        .get();
                                    imageURL = '${document['imageURL']}';
                                    location = '${document['location']}';
                                    o = '${document['o']}';
                                    p = '${document['p']}';
                                    g = '${document['g']}';
                                    b = '${document['b']}';
                                    if (startLocation == '000') {
                                      direction = document['fo'];
                                    } else {
                                      direction = 0.01;
                                    }
                                    Navigator.push(
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
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return SimpleDialog(
                                          title: Text(
                                            '打越祭へようこそ',
                                            style: TextStyle(
                                                color: Colors.deepOrangeAccent),
                                          ),
                                          children: <Widget>[
                                            SimpleDialogOption(
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child: Text(
                                                '操作は左下のボタンで',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 300,
                                height: 50,
                                child: ElevatedButton(
                                    child: const Text(
                                      'パンフレットを見る',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange,
                                      onPrimary: Colors.white,
                                      shape: const StadiumBorder(),
                                    ),
                                    onPressed: () async {
                                      final document = await FirebaseFirestore.instance
                                          .collection('contents')
                                          .doc('uchishi')
                                          .get();
                                      imageURL = '${document['uchishiURL']}';
                                      Navigator.push(
                                          context,

                                          MaterialPageRoute(builder: (context) => Grouplist(imageURL),
                                          )
                                      );
                                    }
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

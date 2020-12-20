import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ufoff/panorama_page/panorama_page_zero.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
                              Row(
                                children: [
                                  Text(
                                    'UCHIKOSHI',
                                    style: TextStyle(
                                      fontSize: 65,
                                      color: Colors.deepOrangeAccent,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'FES',
                                    style: TextStyle(
                                      fontSize: 65,
                                      color: Color.fromRGBO(93, 255, 43, 1),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'ONLINE',
                                    style: TextStyle(
                                      fontSize: 65,
                                      color: Color.fromRGBO(205, 43, 255, 1),
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
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '浅野学園に入る',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 40,
                        color: Colors.lightBlueAccent,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        onTap: () async {
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          startLocation = prefs.getString('my_string') ?? '000';
          final document = await Firestore.instance
              .collection('images')
              .document(startLocation)
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
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    PanoramaPageZero(imageURL, location, o, p, g, b, direction),
                fullscreenDialog: true,
              ),
              (route) => false);
          showDialog(
            context: context,
            builder: (context) {
              return SimpleDialog(
                title: Text(
                  '打越祭へようこそ',
                  style: TextStyle(color: Colors.deepOrangeAccent),
                ),
                children: <Widget>[
                  SimpleDialogOption(
                    onPressed: () => Navigator.pop(context),
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
    );
  }
}

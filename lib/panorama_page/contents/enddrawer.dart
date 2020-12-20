import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ufoff/panorama_page/contents/cover.dart';
import 'package:ufoff/panorama_page/contents/grouplist.dart';
import 'package:ufoff/panorama_page/contents/map.dart';

class EndDrawer extends StatelessWidget {
  String imageURL;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.deepOrangeAccent),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'パンフレット',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.map,
              color: Colors.black,
            ),
            title: Text(
              '学園地図',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () async {
              final document = await Firestore.instance
                  .collection('contents')
                  .document('map')
                  .get();
              imageURL = '${document['mapURL']}';
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SchoolMap(imageURL)));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.list,
              color: Colors.black,
            ),
            title: Text(
              '団体一覧',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () async {
              final document = await Firestore.instance
                  .collection('contents')
                  .document('uchishi')
                  .get();
              imageURL = '${document['uchishiURL']}';
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Grouplist(imageURL)));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.image,
              color: Colors.black,
            ),
            title: Text(
              '表紙を見る',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () async {
              final document = await Firestore.instance
                  .collection('contents')
                  .document('cover')
                  .get();
              imageURL = '${document['coverURL']}';
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Cover(imageURL)));
            },
          ),
        ],
      ),
    );
  }
}

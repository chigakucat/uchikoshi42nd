import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ufoff/group_list_page/pdf_view_page.dart';
import 'package:ufoff/home_page/home_page.dart';
import 'package:ufoff/panorama_page/contents/grouplist.dart';
import 'package:ufoff/panorama_page/contents/map.dart';
import 'package:ufoff/radio_page/radio_page.dart';


class EndDrawer extends StatelessWidget {
  String imageURL;
  String url, title;
  bool isLoading = false;
  String webURL;
  Uri pdfURL;
  String radioURL;
  String b;

  //get model => PanoramaPageModel();

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
                   /* IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),*/
                    Text(
                      'パンフレット',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                          fontFamily: 'SourceHanSansJP-Normal'
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text(
              'ホーム画面へ',
              style: TextStyle(
                color: Colors.black,
                  fontFamily: 'SourceHanSansJP-Normal'
              ),
            ),
            onTap: () async {
              final document = await FirebaseFirestore.instance
                  .collection('contents')
                  .doc('map')
                  .get();
              imageURL = '${document['mapURL']}';
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.map,
              color: Colors.black,
            ),
            title: Text(
              'マップ',
              style: TextStyle(
                color: Colors.black,
                  fontFamily: 'SourceHanSansJP-Normal'
              ),
            ),
            onTap: () async {
              final document = await FirebaseFirestore.instance
                  .collection('contents')
                  .doc('map')
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
              '参加団体紹介',
              style: TextStyle(
                color: Colors.black,
                  fontFamily: 'SourceHanSansJP-Normal'
              ),
            ),
            onTap: () async {
              final document = await FirebaseFirestore.instance
                  .collection('contents')
                  .doc('uchishi')
                  .get();
              imageURL = '${document['uchishiURL']}';
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Grouplist(imageURL)));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.picture_as_pdf,
              color: Colors.black,
            ),
            title: Text(
              'PDF版パンフレットを見る',
              style: TextStyle(
                color: Colors.black,
                  fontFamily: 'SourceHanSansJP-Normal'
              ),
            ),
            onTap: () async {
              final document = await FirebaseFirestore.instance
                  .collection('contents')
                  .doc('Pamphlet')
                  .get();
              title = '${document['title']}';
              pdfURL = Uri.parse('${document['pamphlet_id']}');
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => PDF(
                          Colors.deepOrangeAccent,
                          title,
                          pdfURL)));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.radio,
              color: Colors.black,
            ),
            title: Text(
              'アサノラジオ局を聴く',
              style: TextStyle(
                color: Colors.black,
                  fontFamily: 'SourceHanSansJP-Normal'
              ),
            ),
            onTap: () async {
              final document = await FirebaseFirestore.instance
                  .collection('radio')
                  .doc('logo')
                  .get();
              title = '${document['title']}';
              radioURL = '${document['radio_id']}';
              b = '';
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => asanoRadio(
                          Colors.grey.shade900,
                        title,
                      radioURL,)));
            },
          ),
        ],
      ),
    );
  }
}

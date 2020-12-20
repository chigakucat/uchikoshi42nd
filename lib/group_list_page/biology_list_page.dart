import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ufoff/group_list_page/pdf_view_page.dart';
import 'package:ufoff/youtube_list_page/youtube_view_page.dart';
import 'package:provider/provider.dart';
import 'biology_list_page_model.dart';

class BiologyListPage extends StatelessWidget {
  Color _color;
  String title;
  String code;
  BiologyListPage(this._color, this.title, this.code);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BiologyListPageModel>(
      create: (_) => BiologyListPageModel()..fetchBiologyTiles(code),
      child: Consumer<BiologyListPageModel>(
        builder: (context, model, child) {
          final biologypdftiles = model.biologypdftiles;
          final pdflistTiles = biologypdftiles
              .map(
                (biologypdftile) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: _color),
                      ),
                      width: 300,
                      height: 200,
                      child: Stack(
                        children: [
                          Container(
                            height: 200,
                            width: double.infinity,
                            color: Colors.white,
                          ),
                          Center(
                            child: Image.network(biologypdftile.imageURL),
                          ),
                          Container(
                            color: Colors.white.withOpacity(0.7),
                          ),
                          Center(
                            child: Text(
                              biologypdftile.title,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PDF(_color,
                              biologypdftile.title, biologypdftile.pdfURL),
                        ),
                      );
                    },
                  ),
                ),
              )
              .toList();
          final biologyyoutubetiles = model.biologyyoutubetiles;
          final youtubelistTiles = biologyyoutubetiles
              .map(
                (youtubetile) => Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: _color),
                      ),
                      width: 300,
                      height: 200,
                      child: Stack(
                        children: [
                          Container(
                            height: 200,
                            width: double.infinity,
                            color: Colors.white,
                          ),
                          Center(
                            child: Image.network(
                              youtubetile.imageURL,
                            ),
                          ),
                          Container(
                            color: Colors.white.withOpacity(0.7),
                          ),
                          Center(
                            child: Text(
                              youtubetile.title,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Youtube(_color,
                              youtubetile.title, youtubetile.youtubeURL),
                        ),
                      );
                    },
                  ),
                ),
              )
              .toList();
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
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            body: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 30,
                  height: double.infinity,
                  color: _color.withOpacity(0.5),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '動',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '画',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: double.infinity,
                  child: Container(
                    width: double.infinity,
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 1.7778, // 1行に表示する数
                      children: youtubelistTiles,
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  height: double.infinity,
                  color: _color.withOpacity(0.5),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '画',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '像',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  height: double.infinity,
                  child: ListView(
                    children: pdflistTiles,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

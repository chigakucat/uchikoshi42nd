import 'package:flutter/material.dart';
import 'package:ufoff/youtube_list_page/youtube_list_page_model.dart';
import 'package:ufoff/youtube_list_page/youtube_view_page.dart';
import 'package:provider/provider.dart';

class YoutubeListPage extends StatelessWidget {
  Color _color;
  String title;
  String backURL;
  String code;
  YoutubeListPage(this._color, this.title, this.backURL, this.code);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<YoutubeListPageModel>(
      create: (_) => YoutubeListPageModel()..fetchYoutubeTiles(code),
      child: Consumer<YoutubeListPageModel>(
        builder: (context, model, child) {
          final youtubetiles = model.youtubetiles;
          final listTiles = youtubetiles
              .map(
                (youtubetile) => Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: _color),
                      ),
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
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(backURL),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Expanded(
                    child: Container(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: double.infinity,
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 1.7778, // 1行に表示する数
                      children: listTiles,
                    ),
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

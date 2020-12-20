import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ufoff/youtube_list_page/youtube_tile.dart';

class YoutubeListPageModel extends ChangeNotifier {
  List<YoutubeTile> youtubetiles = [];

  Future fetchYoutubeTiles(code) async {
    final docs = await Firestore.instance
        .collection('${code}youtubetiles')
        .getDocuments();
    final youtubetiles = docs.documents
        .map((doc) =>
            YoutubeTile(doc['title'], doc['imageURL'], doc['youtubeURL']))
        .toList();
    this.youtubetiles = youtubetiles;
    notifyListeners();
  }
}

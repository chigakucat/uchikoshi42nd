import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'biology_tile.dart';

class BiologyListPageModel extends ChangeNotifier {
  List<BiologyPDFTile> biologypdftiles = [];
  List<BiologyYoutubeTile> biologyyoutubetiles = [];

  Future fetchBiologyTiles(code) async {
    final pdfdocs = await FirebaseFirestore.instance
        .collection('${code}biologypdftiles')
    //.doc()
        .get();
    final biologypdftiles = pdfdocs.docs
        .map((pdfdoc) => BiologyPDFTile(
            pdfdoc['title'], pdfdoc['imageURL'], pdfdoc['pdfURL']))
        .toList();
    this.biologypdftiles = biologypdftiles;
    final docs = await FirebaseFirestore.instance
        .collection('${code}youtubetiles')
        .get();
    final biologyyoutubetiles = docs.docs
        .map((doc) => BiologyYoutubeTile(
            doc['title'], doc['imageURL'], doc['youtubeURL']))
        .toList();
    this.biologyyoutubetiles = biologyyoutubetiles;
    notifyListeners();
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'biology_tile.dart';

class BiologyListPageModel extends ChangeNotifier {
  List<BiologyPDFTile> biologypdftiles = [];
  List<BiologyYoutubeTile> biologyyoutubetiles = [];

  Future fetchBiologyTiles(code) async {
    final pdfdocs = await Firestore.instance
        .collection('${code}biologypdftiles')
        .getDocuments();
    final biologypdftiles = pdfdocs.documents
        .map((pdfdoc) => BiologyPDFTile(
            pdfdoc['title'], pdfdoc['imageURL'], pdfdoc['pdfURL']))
        .toList();
    this.biologypdftiles = biologypdftiles;
    final docs = await Firestore.instance
        .collection('${code}youtubetiles')
        .getDocuments();
    final biologyyoutubetiles = docs.documents
        .map((doc) => BiologyYoutubeTile(
            doc['title'], doc['imageURL'], doc['youtubeURL']))
        .toList();
    this.biologyyoutubetiles = biologyyoutubetiles;
    notifyListeners();
  }
}

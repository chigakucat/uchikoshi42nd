import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ufoff/group_list_page/pdf_tile.dart';

class PDFListPageModel extends ChangeNotifier {
  List<PDFTile> pdftiles = [];

  Future fetchPDFTiles(code) async {
    final docs =
        await Firestore.instance.collection('${code}pdftiles').getDocuments();
    final pdftiles = docs.documents
        .map((doc) => PDFTile(doc['title'], doc['imageURL'], doc['pdfURL']))
        .toList();
    this.pdftiles = pdftiles;
    notifyListeners();
  }
}

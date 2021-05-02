import 'package:flutter/material.dart';
import 'package:ufoff/group_list_page/pdf_list_page_model.dart';
import 'package:ufoff/group_list_page/pdf_view_page.dart';
import 'package:provider/provider.dart';

class PDFListPage extends StatelessWidget {
  Color _color;
  String title;
  String code;
  PDFListPage(this._color, this.title, this.code);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PDFListPageModel>(
      create: (_) => PDFListPageModel()..fetchPDFTiles(code),
      child: Consumer<PDFListPageModel>(
        builder: (context, model, child) {
          final pdftiles = model.pdftiles;
          final listTiles = pdftiles
              .map(
                (pdftile) => Padding(
                  padding: const EdgeInsets.all(8.0),
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
                            child: Image.network(pdftile.imageURL),
                          ),
                          Container(
                            color: Colors.white.withOpacity(0.7),
                          ),
                          Center(
                            child: Text(
                              pdftile.title,
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
                          builder: (context) =>
                              PDF(_color, pdftile.title, pdftile.pdfURL as Uri),
                        ),
                      );
                    },
                  ),
                ),
              )
              .toList();
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(65.0),
              child: AppBar(
                backgroundColor: _color,
                leading: SizedBox(
                  width: 20,
                  height: 20,
                  child: IconButton(
                    padding: EdgeInsets.only(
                      top: 10.0,
                      left: 15.0,
                    ),
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                /*actions: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.0,
                      left: 15.0,
                    ),

                  ),
                ],*/
              ),
            ),
            body: ListView(
              children: listTiles,
            ),
          );
        },
      ),
    );
  }
}

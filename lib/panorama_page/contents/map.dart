import 'package:flutter/material.dart';

class SchoolMap extends StatelessWidget {
  String imageURL;
  SchoolMap(this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          backgroundColor: Color.fromRGBO(93, 255, 43, 1),
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
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              'マップ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),

        ),
      ),
      body: Center(
        child: Image.network(imageURL),
      ),
    );
  }
}

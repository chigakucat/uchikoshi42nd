import 'dart:io';
import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  String imageURL;
  Cover(this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86.0),
        child: AppBar(
          backgroundColor: Colors.black,
          leading: SizedBox(
            width: 20,
            height: 20,
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'パンフレットの表紙',
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
      body: Center(
        child: Image.network(imageURL),
      ),
    );
  }
}

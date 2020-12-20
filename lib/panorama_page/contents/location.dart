import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  String location;
  Location(this.location);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Card(
              color: Colors.black,
              shape: StadiumBorder(),
              child: Padding(
                padding: EdgeInsets.only(
                    top: 5.0, right: 15.0, bottom: 5.0, left: 15.0),
                child: Text(
                  location,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

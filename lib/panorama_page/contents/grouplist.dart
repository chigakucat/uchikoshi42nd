import 'dart:io';
import 'package:flutter/material.dart';

class Grouplist extends StatelessWidget {
  String imageURL;
  Grouplist(this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86.0),
        child: AppBar(
          backgroundColor: Color.fromRGBO(205, 43, 255, 1),
          leading: SizedBox(
            width: 20,
            height: 20,
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              '団体一覧',
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
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            height: 68,
            child: Text(
              '中学棟1階',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E3%83%86%E3%82%99%E3%82%A3%E3%83%98%E3%82%99%E3%83%BC%E3%83%88%E9%83%A8%E3%83%AD%E3%82%B3%E3%82%99.jpg?alt=media&token=3ccd91bb-7c5c-43d7-8a3d-ced709ff4648'),
                    ),
                    Text(
                      'ディベート部',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            height: 68,
            child: Text(
              '中学棟2階',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Container(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            height: 68,
            child: Text(
              '中学棟3階',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E6%95%B0%E7%A0%94%E3%83%AD%E3%82%B3%E3%82%99.jpg?alt=media&token=fbd65788-9fb1-49c2-b563-71a4c79c8722'),
                    ),
                    Text(
                      '数学研究会',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E6%88%A6%E5%8F%B2%E3%83%AD%E3%82%B3%E3%82%99.png?alt=media&token=48153793-ab1c-4a3f-abdc-e78ce5209008'),
                    ),
                    Text(
                      '戦史研究会',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E6%9B%B8%E9%81%93.jpg?alt=media&token=8fba1a73-4abe-4b23-8a9f-dea9d1180b6d'),
                    ),
                    Text(
                      '書道部',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2Fimages.jpg?alt=media&token=a2419841-7103-42fd-b911-5658da739b18'),
                    ),
                    Text(
                      '中1学年参加',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2Fimages.jpg?alt=media&token=a2419841-7103-42fd-b911-5658da739b18'),
                    ),
                    Text(
                      '中2学年参加',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            height: 68,
            child: Text(
              '中学棟4階',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E5%9C%B0%E5%AD%A6%E9%83%A8.png?alt=media&token=90393c8d-830c-4ab4-968d-c57ae9a081fd'),
                    ),
                    Text(
                      '地学部',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E9%89%84%E9%81%93%E7%A0%94%E3%83%AD%E3%82%B3%E3%82%99.jpg?alt=media&token=1a80e80d-8c80-47c7-9717-b46c59b76eb4'),
                    ),
                    Text(
                      '鉄研<研究班>',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E7%99%BB%E5%B1%B1%E9%83%A8.png?alt=media&token=9ca84baf-8fea-433b-a09d-cfb06f3d0c20'),
                    ),
                    Text(
                      '登山部',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E3%83%AA%E3%82%B9%E3%81%AE%E3%81%8A%E3%81%86%E3%81%A1.jpg?alt=media&token=393a1d9b-9396-4f12-848a-e3f9df6a3f20'),
                    ),
                    Text(
                      'りすのおうち',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            height: 68,
            child: Text(
              '中学棟5階',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E3%82%81%E3%81%95%E3%82%99%E6%89%93%E3%83%AD%E3%82%B3%E3%82%99.jpg?alt=media&token=8741ddb2-fc63-483c-a82f-ea44c06a5581'),
                    ),
                    Text(
                      'めざ打',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E3%83%95%E3%82%9A%E3%83%AD%E9%87%8E%E7%90%83%E3%83%AD%E3%82%B3%E3%82%99.jpeg?alt=media&token=2033a2eb-412f-4c5f-bbae-a47f7b1a3152'),
                    ),
                    Text(
                      'プロ野球研',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FASET.jpg?alt=media&token=545daba0-46ee-4d01-a674-48440e7370d2'),
                    ),
                    Text(
                      '特撮研',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            height: 68,
            child: Text(
              '高校棟地下1階',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E5%8C%96%E5%AD%A6.png?alt=media&token=e79347ae-1b10-480b-9fcf-ee33056009f8'),
                    ),
                    Text(
                      '化学部',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            height: 68,
            child: Text(
              '高校棟1階',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E7%94%9F%E5%BE%92%E4%BC%9A.png?alt=media&token=284167c5-f9e4-4e87-b13a-5d9c78014bf4'),
                    ),
                    Text(
                      '生徒会',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E7%94%9F%E7%89%A9%E9%83%A8%E3%83%AD%E3%82%B3%E3%82%99.jpeg?alt=media&token=05b7648d-7926-4c1f-80e0-fd5ed8118476'),
                    ),
                    Text(
                      '生物部',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E7%BE%8E%E8%A1%93%E9%83%A8.png?alt=media&token=993bc36f-7772-4129-82a0-8b663c6e98e7'),
                    ),
                    Text(
                      '美術部',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            height: 68,
            child: Text(
              '高校棟2階',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Container(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            height: 68,
            child: Text(
              '高校棟3階',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FAPClogo16001600%20-%20%E9%88%B4%E6%9C%A8%E7%90%86%E4%BB%81.png%20%E3%81%AE%E3%82%B3%E3%83%92%E3%82%9A%E3%83%BC%20%E3%81%AE%E3%82%B3%E3%83%92%E3%82%9A%E3%83%BC.png?alt=media&token=a4e75130-fa26-4192-8b3f-4d22990fd10d'),
                    ),
                    Text(
                      '物理部',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99%E7%A0%94%E7%A9%B6.jpg?alt=media&token=5e9872ee-6387-4ff7-ae10-4adc2fa7d504'),
                    ),
                    Text(
                      'クイ研',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FKCC%E3%83%AD%E3%82%B3%E3%82%99.jpg?alt=media&token=58616ee1-b63c-40f0-9237-8549786330d8'),
                    ),
                    Text(
                      'KCC',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E8%88%AA%E7%A9%BA%E7%A0%94%E7%A9%B6%E4%BC%9A.jpg?alt=media&token=41fc6296-38c8-46e2-9b70-bce8b52b5943'),
                    ),
                    Text(
                      '航空研',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E9%89%84%E9%81%93%E7%A0%94%E3%83%AD%E3%82%B3%E3%82%99.jpg?alt=media&token=1a80e80d-8c80-47c7-9717-b46c59b76eb4'),
                    ),
                    Text(
                      '鉄研<模型班>',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E5%9B%B3%E6%9B%B8%E7%A0%94.jpg?alt=media&token=e70bf741-73ad-41a0-a381-9809c9ad56bf'),
                    ),
                    Text(
                      '図書研',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            height: 68,
            child: Text(
              '高校棟4階',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E7%A5%9E%E5%85%B5%E8%A1%9B.jpg?alt=media&token=f0f93563-d58f-4e79-80c3-2dfc59bc3fd1'),
                    ),
                    Text(
                      '神兵衛',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2Fghostlogo.jpg?alt=media&token=1ab5c8d1-23fd-45d5-9dca-edeb7a1ccfab'),
                    ),
                    Text(
                      'お化け屋敷',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E6%AD%B4%E7%A0%94%E3%83%AD%E3%82%B3%E3%82%99.jpg?alt=media&token=eb463920-74fd-4d13-8817-e7b9311476a9'),
                    ),
                    Text(
                      '歴研',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            height: 68,
            child: Text(
              '講堂',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E3%83%A1%E3%83%AD%E3%83%B3%E3%83%95%E3%83%A9%E3%83%83%E3%83%98%E3%82%9A%E3%82%B7%E3%82%99%E3%83%A3%E3%82%B9%E3%82%99%E3%82%AA%E3%83%BC%E3%82%B1%E3%82%B9%E3%83%88%E3%83%A9.jpg?alt=media&token=25e6dbf5-31e0-466a-a540-2dfb688ebfa8'),
                    ),
                    Text(
                      'ジャズ',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E3%81%97%E3%82%99%E3%82%83%E3%81%8F%E3%82%99%E3%83%AA%E3%83%B3%E3%82%AF%E3%82%99.jpg?alt=media&token=4f8fec4c-a4b9-46cc-88ed-f7a2f48574af'),
                    ),
                    Text(
                      'ジャグリング',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E3%83%86%E3%82%99%E3%82%A3%E3%83%98%E3%82%99%E3%83%BC%E3%83%88%E9%83%A8%E3%83%AD%E3%82%B3%E3%82%99.jpg?alt=media&token=3ccd91bb-7c5c-43d7-8a3d-ced709ff4648'),
                    ),
                    Text(
                      'ディベート',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E5%8A%87%E9%83%A8%E3%83%AD%E3%82%B3%E3%82%99%20-%20%E5%B7%9D%E5%B3%B6%E8%A3%95%E8%B2%B4.png%20%E3%81%AE%E3%82%B3%E3%83%92%E3%82%9A%E3%83%BC.png?alt=media&token=18db3b14-f85b-4264-a484-095a5a01a355'),
                    ),
                    Text(
                      '劇団こぎと',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            height: 68,
            child: Text(
              'アリーナ',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E5%90%B9%E5%A5%8F%E6%A5%BD.jpg?alt=media&token=58a8495b-4f4d-4e91-a3cc-fb6589b3aa27'),
                    ),
                    Text(
                      '吹奏楽部',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E3%81%97%E3%82%99%E3%82%83%E3%81%8F%E3%82%99%E3%83%AA%E3%83%B3%E3%82%AF%E3%82%99.jpg?alt=media&token=4f8fec4c-a4b9-46cc-88ed-f7a2f48574af'),
                    ),
                    Text(
                      'ジャグリング',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(imageURL),
                    ),
                    Text(
                      '浅野打ち師',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            height: 68,
            child: Text(
              '清和書林',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E5%9B%B3%E6%9B%B8%E7%A0%94.jpg?alt=media&token=e70bf741-73ad-41a0-a381-9809c9ad56bf'),
                    ),
                    Text(
                      '図書研',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 50,
          ),
        ],
      ),
    );
  }
}

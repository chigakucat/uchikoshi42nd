import 'package:flutter/material.dart';

class Grouplist extends StatelessWidget {
  String imageURL;

  Grouplist(this.imageURL);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0),
          child: AppBar(
            backgroundColor: Color.fromRGBO(205, 43, 255, 1),
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
                '団体一覧',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            bottom: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.white.withOpacity(0.3),
              unselectedLabelStyle: TextStyle(fontSize: 12.0),
              labelColor: Colors.yellowAccent,
              labelStyle: TextStyle(fontSize: 16.0),
              indicatorColor: Colors.white,
              indicatorWeight: 2.0,
              // タブに表示する内容
              tabs: [
                Tab(
                  child: Text('1階'),
                ),
                Tab(
                  child: Text('2階'),
                ),
                Tab(
                  child: Text('3階'),
                ),
                Tab(
                  child: Text('4階'),
                ),
                Tab(
                  child: Text('5階'),
                ),
                Tab(
                  child: Text('講堂'),
                ),
                Tab(
                  child: Text('アリーナ'),
                ),
                Tab(
                  child: Text('清話書林'),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                Column(
                  children: [
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
                    Container(
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/maps%2FC1.jpg?alt=media&token=a1cf5e04-2d5f-4f01-a35d-8c31b5b6668d'),
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
                    Container(
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/maps%2FK1.jpg?alt=media&token=25b25576-f708-4939-8d91-0fd67235b534'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(
                            children: <Widget>[
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  print("生物部 called.");
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        insetPadding: EdgeInsets.all(10),
                                        title: Row(
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              child: Image.network(
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK1%2Fs-%E7%94%9F%E7%89%A9%E9%83%A8%E3%83%AD%E3%82%B4.jpg?alt=media&token=ff5be89c-de63-42c0-8daa-c25aea5cd7f4'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "生物部",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（生物教室）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "ウサギやカエル、魚など様々な生き物の展示や生物部クイズはもちろん、今年はカメレースもやります！カメレースと生物部クイズでは景品を用意しています。さらに今年は昆虫標本の展示にも力を入れています。また、毎年好評のマウスの解剖実験、DNA抽出実験もやります。是非お越し下さい。"),
                                          ],
                                        ),
                                        actions: <Widget>[
                                          ElevatedButton(
                                            child: Text('OK'),
                                            onPressed: () =>
                                                Navigator.of(context).pop(1),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.network(
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK1%2Fs-%E7%94%9F%E7%89%A9%E9%83%A8%E3%83%AD%E3%82%B4.jpg?alt=media&token=ff5be89c-de63-42c0-8daa-c25aea5cd7f4'),
                                ),
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
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  print("生徒会 called.");
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        insetPadding: EdgeInsets.all(10),
                                        title: Row(
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              child: Image.network(
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK1%2Fs-%E7%94%9F%E5%BE%92%E4%BC%9A%E3%83%AD%E3%82%B4.jpg?alt=media&token=757a2849-09c3-4338-ac68-7eb9e27f1d90'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "生徒会",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（生徒会室）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "みなさんこんにちは！浅野学園生徒会です。生徒会では、毎年同様チャリティーグッズの販売を行っています。今年はなんと、新デザインのシャープペンシルを販売しています。興味のある方はぜひ 高校棟1階 生徒会室までお越しください。"),
                                          ],
                                        ),
                                        actions: <Widget>[
                                          ElevatedButton(
                                            child: Text('OK'),
                                            onPressed: () =>
                                                Navigator.of(context).pop(1),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.network(
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK1%2Fs-%E7%94%9F%E5%BE%92%E4%BC%9A%E3%83%AD%E3%82%B4.jpg?alt=media&token=757a2849-09c3-4338-ac68-7eb9e27f1d90'),
                                ),
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
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  print("美術部 called.");
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        insetPadding: EdgeInsets.all(10),
                                        title: Row(
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              child: Image.network(
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK1%2Fs-%E7%BE%8E%E8%A1%93%E3%80%80%E3%83%AD%E3%82%B4_page.jpg?alt=media&token=0d166e5f-5451-416a-baeb-f527aa0a57d3'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "美術部",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（美術教室）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "鉛筆、水彩、油画、立体、映像、と様々なメディアを用いた、美術部員の作品がお待ちしています。ぜひお越しください。"),
                                          ],
                                        ),
                                        actions: <Widget>[
                                          ElevatedButton(
                                            child: Text('OK'),
                                            onPressed: () =>
                                                Navigator.of(context).pop(1),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.network(
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK1%2Fs-%E7%BE%8E%E8%A1%93%E3%80%80%E3%83%AD%E3%82%B4_page.jpg?alt=media&token=0d166e5f-5451-416a-baeb-f527aa0a57d3'),
                                ),
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
                  ],
                ),
              ],
            ),
            ListView(
              children: [
                Column(
                  children: [
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
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/maps%2FC2.jpg?alt=media&token=28dde722-7575-4079-80ac-6ae1d62b47cd'),
                    ),
                    Container(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                    ),
                    Container(
                      height: 50,
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
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/maps%2FK2.jpg?alt=media&token=18d31995-a172-4f4e-a297-fd45266e3c33'),
                    ),
                  ],
                ),
              ],
            ),
            ListView(
              children: [
                Column(
                  children: [
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
                    Container(
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/maps%2FC3.jpg?alt=media&token=251ee5e4-cf85-48f3-9d16-32a1ec786bd4'),
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
                    Container(
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/maps%2FK3.jpg?alt=media&token=3920885b-f14b-4682-a0f4-274b6c196d5c'),
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
                  ],
                ),
              ],
            ),
            ListView(
              children: [
                Column(
                  children: [
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
                    Container(
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/maps%2FC4.jpg?alt=media&token=67b382b9-3a62-42dc-baf4-5f2da32d860d'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(
                            children: <Widget>[
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  print("地学部 called.");
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        insetPadding: EdgeInsets.all(10),
                                        title: Row(
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              child: Image.network(
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E5%9C%B0%E5%AD%A6%E9%83%A8.png?alt=media&token=90393c8d-830c-4ab4-968d-c57ae9a081fd'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "地学部",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（中2AB）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "地質系の化石や鉱物、宇宙やロケット、気象の分野の世界を展示と解説を交えてお伝えします。是非見に来てください!!"),
                                          ],
                                        ),
                                        actions: <Widget>[
                                          ElevatedButton(
                                            child: Text('OK'),
                                            onPressed: () =>
                                                Navigator.of(context).pop(1),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.network(
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E5%9C%B0%E5%AD%A6%E9%83%A8.png?alt=media&token=90393c8d-830c-4ab4-968d-c57ae9a081fd'),
                                ),
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
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  print("てっけん called.");
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        insetPadding: EdgeInsets.all(10),
                                        title: Row(
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              child: Image.network(
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E9%89%84%E9%81%93%E7%A0%94%E3%83%AD%E3%82%B3%E3%82%99.jpg?alt=media&token=1a80e80d-8c80-47c7-9717-b46c59b76eb4'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "鉄研<研究班>",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（中2C）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "打越祭へお越しの皆様こんにち は!鉄研です!研究班は、例年とは違った形で活動の成果を発表します。 とくとご覧あれ! ※模型班は高校棟3階選択2へ"),
                                          ],
                                        ),
                                        actions: <Widget>[
                                          ElevatedButton(
                                            child: Text('OK'),
                                            onPressed: () =>
                                                Navigator.of(context).pop(1),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.network(
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E9%89%84%E9%81%93%E7%A0%94%E3%83%AD%E3%82%B3%E3%82%99.jpg?alt=media&token=1a80e80d-8c80-47c7-9717-b46c59b76eb4'),
                                ),
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
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  print("登山部 called.");
                                },
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.network(
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E7%99%BB%E5%B1%B1%E9%83%A8.png?alt=media&token=9ca84baf-8fea-433b-a09d-cfb06f3d0c20'),
                                ),
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
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  print("りすのおうち called.");
                                },
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.network(
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2F%E3%83%AA%E3%82%B9%E3%81%AE%E3%81%8A%E3%81%86%E3%81%A1.jpg?alt=media&token=393a1d9b-9396-4f12-848a-e3f9df6a3f20'),
                                ),
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
                    Container(
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/maps%2FK4.jpg?alt=media&token=49e523f1-df36-4440-818a-644833c10cf6'),
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
                  ],
                ),
              ],
            ),
            ListView(
              children: [
                Column(
                  children: [
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
                    Container(
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/maps%2FC5.jpg?alt=media&token=991e66e5-c69e-479b-9803-bc312a04afe8'),
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
                        '高校棟5階',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                    ),
                    Container(
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/maps%2FK5.jpg?alt=media&token=217b9810-7139-4946-aaf6-5e753f433e6f'),
                    ),
                  ],
                ),
              ],
            ),
            ListView(
              children: [
                Column(
                  children: [
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
                  ],
                ),
              ],
            ),
            ListView(
              children: [
                Column(
                  children: [
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
                  ],
                ),
              ],
            ),
            ListView(
              children: [
                Column(
                  children: [
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}

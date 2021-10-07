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
                    fontFamily: 'SourceHanSansJP-Normal'),
              ),
            ),
            bottom: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.white.withOpacity(0.3),
              unselectedLabelStyle: TextStyle(fontSize: 12.0),
              labelColor: Colors.yellowAccent,
              labelStyle: TextStyle(
                  fontSize: 16.0, fontFamily: 'SourceHanSansJP-Normal'),
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
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          new GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () {
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
                                              'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC2%2Fs-2021.7%E5%88%B6%E6%9C%8D%E3%83%90%E3%82%B6%E3%83%BC%E3%83%AD%E3%82%B4(%E5%8E%9A%E7%94%9F%E9%83%A8).jpg?alt=media&token=adcc83b5-a027-40c0-a8f7-e1428c938e2d'),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                            left: 16,
                                          ),
                                        ),
                                        Text(
                                          "PTAバザー",
                                          style: TextStyle(fontSize: 17),
                                        ),
                                        Text(
                                          "（中学会議室）",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    content: Wrap(
                                      children: <Widget>[
                                        Text(
                                            "人気の制服リサイクル及び手作り品の販売。制服、体操服等、また可愛い手作り品もご用意してお待ちしております。"),
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
                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC2%2Fs-2021.7%E5%88%B6%E6%9C%8D%E3%83%90%E3%82%B6%E3%83%BC%E3%83%AD%E3%82%B4(%E5%8E%9A%E7%94%9F%E9%83%A8).jpg?alt=media&token=adcc83b5-a027-40c0-a8f7-e1428c938e2d'),
                            ),
                          ),
                          Text(
                            'PTAバザー',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
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
                    Container(
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          new GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    insetPadding: EdgeInsets.all(10),
                                    title: Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          child: Image.network(
                                              'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK2%2Fs-%E3%82%81%E3%81%96%E6%89%93%E3%83%AD%E3%82%B4.jpg?alt=media&token=84ff5ea7-16b3-4801-a792-dcaf49436cdf'),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                            left: 16,
                                          ),
                                        ),
                                        Text(
                                          "めざめるパワー打越\n（LL教室）",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    content: Wrap(
                                      children: <Widget>[
                                        Text(
                                            "ポケットモンスターに関して不定期で活動を行っている有志団体です。現在はコロナの影響で活動出来ていませんが、普段は部員同士や他学校の団体との交流戦などを不定期に行っております。ポケモンに関する展示をする予定なので是非ご覧ください！！！"),
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
                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK2%2Fs-%E3%82%81%E3%81%96%E6%89%93%E3%83%AD%E3%82%B4.jpg?alt=media&token=84ff5ea7-16b3-4801-a792-dcaf49436cdf'),
                            ),
                          ),
                          Text(
                            'めざめるパワー打越',
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
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC3%2Fs-%E3%83%87%E3%82%A3%E3%83%99%E3%83%BC%E3%83%88%E9%83%A8%E3%83%AD%E3%82%B4.jpg?alt=media&token=4cb60c87-c28b-4669-bdea-5db5a0ec6c43'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "ディベート部",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（中1A）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "浅野学園ディベート部です！ディベート部では、ディベートと模擬国連の２つの活動を行っており、世界大会出場経験アリ！教室では、それらの活動についての紹介や、ディベートの実演を行っています！また、文化祭2日目に講堂での英語ディベートの実演を予定しています！ぜひ見に来て下さい！"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC3%2Fs-%E3%83%87%E3%82%A3%E3%83%99%E3%83%BC%E3%83%88%E9%83%A8%E3%83%AD%E3%82%B4.jpg?alt=media&token=4cb60c87-c28b-4669-bdea-5db5a0ec6c43'),
                                ),
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
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC3%2Fs-%E5%90%8D%E7%A7%B0%E6%9C%AA%E8%A8%AD%E5%AE%9A.jpg?alt=media&token=a760c595-6081-4ed1-8abf-29d77309c14c'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "中1学年参加",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（中1C）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "中学1年生の実行委員が企画した学校紹介コンテンツ、中1生徒による相談コーナーを設置しています。小学生の皆さんはぜひ来てください。"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC3%2Fs-%E5%90%8D%E7%A7%B0%E6%9C%AA%E8%A8%AD%E5%AE%9A.jpg?alt=media&token=a760c595-6081-4ed1-8abf-29d77309c14c'),
                                ),
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC3%2Fs-%E4%B8%AD%EF%BC%92%E5%AD%A6%E5%B9%B4%E5%8F%82%E5%8A%A0%E3%83%AD%E3%82%B4.jpg?alt=media&token=e5599895-38e2-42c9-a2cd-f331e54c74b1'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "中2学年参加",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（中1D）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "中2学年参加です！昨年ASANO THE BESTを獲得した学年が今年は絶対に楽しめるカジノを開催します。中学棟3階D組教室へ是非お越しください！"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC3%2Fs-%E4%B8%AD%EF%BC%92%E5%AD%A6%E5%B9%B4%E5%8F%82%E5%8A%A0%E3%83%AD%E3%82%B4.jpg?alt=media&token=e5599895-38e2-42c9-a2cd-f331e54c74b1'),
                                ),
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
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC3%2Fs-%E3%83%AD%E3%82%B4(3).jpg?alt=media&token=6d501d09-697f-47de-ac93-3bb98294a631'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "神兵衛",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（中1EF）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "バドミントン部では神兵衛を運営します。神兵衛は、ボウリングやシャトル入れゲームに加えて、飲み物も販売しています。和風の装飾と共に楽しんでいってください。"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC3%2Fs-%E3%83%AD%E3%82%B4(3).jpg?alt=media&token=6d501d09-697f-47de-ac93-3bb98294a631'),
                                ),
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
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK3%2Fs-%E5%9C%B0%E5%AD%A6%E9%83%A8%E3%83%AD%E3%82%B4.jpg?alt=media&token=e8385521-9212-4703-af88-95aed45f6238'),
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
                                              "（高一AB）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "地学部の展示では、鉱物・化石・ロケット・気象...とても広い地学の世界を部員による解説を交えてお伝えします。地学に詳しくない？大丈夫です！地学好きもそうでもない人もきっと楽しめます。ぜひお越しください！"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK3%2Fs-%E5%9C%B0%E5%AD%A6%E9%83%A8%E3%83%AD%E3%82%B4.jpg?alt=media&token=e8385521-9212-4703-af88-95aed45f6238'),
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK3%2Fs-%E7%89%A9%E7%90%86%E9%83%A8%E3%83%AD%E3%82%B4.jpg?alt=media&token=39479b2c-7411-4950-9123-04349066d225'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "物理部",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（高一CD）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "物理部では自作ゲームやコイルガン、LEDキューブなど、様々な「面白いもの」を展示しています。作品のほとんどは実際に手にとって体験することができます。毎年文化祭ギリギリまでに間に合わせる（予定の）部員の底力を体感してください。興味が湧いた方はぜひ高一C・D教室まで！"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK3%2Fs-%E7%89%A9%E7%90%86%E9%83%A8%E3%83%AD%E3%82%B4.jpg?alt=media&token=39479b2c-7411-4950-9123-04349066d225'),
                                ),
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
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK3%2Fs-%E3%83%AD%E3%82%B4-KCC.jpg?alt=media&token=30ff9707-118d-4674-9abc-737a39b8567b'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "喫茶KCC",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（高一EF）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "歩き疲れたそこのあなた！喫茶KCCでひと休みしてはいかがでしょうか？爽やかな水泳部員達が皆様をお出迎えします！気軽にお立ち寄りください〜"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK3%2Fs-%E3%83%AD%E3%82%B4-KCC.jpg?alt=media&token=30ff9707-118d-4674-9abc-737a39b8567b'),
                                ),
                              ),
                              Text(
                                '喫茶KCC',
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK3%2Fs-%E3%83%AD%E3%82%B4(%E3%80%8CACC%E3%80%8D).jpg?alt=media&token=8b591173-33f6-4beb-bc84-2dea2f3b6b91'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "化学部",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（選択1・２）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "化学部は文化祭では化学の面白さを広めるためショーをしたり、活動の成果を披露する研究発表をしています。例えば、怪しく光るフラスコや次々と色が変わっていく液体を「酸化還元反応」を使って作ったり。化学に興味ある人でもない人でも楽しめるので、ぜひ見に来てください!!"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK3%2Fs-%E3%83%AD%E3%82%B4(%E3%80%8CACC%E3%80%8D).jpg?alt=media&token=8b591173-33f6-4beb-bc84-2dea2f3b6b91'),
                                ),
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
                      ],
                    ),
                    Container(
                      height: 5,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          '本館3階',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          '(選択2横の通路からアクセス)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          new GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () {
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
                                              'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK3%2Fs-%E6%95%B0%E7%A0%94%E3%83%AD%E3%82%B4.jpg?alt=media&token=ef176a0b-c6a0-43c9-868c-d2c31e32f022'),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                            left: 16,
                                          ),
                                        ),
                                        Text(
                                          "数学研究会",
                                          style: TextStyle(fontSize: 17),
                                        ),
                                        Text(
                                          "（分級教室）",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    content: Wrap(
                                      children: <Widget>[
                                        Text(
                                            "数学研究会は、部員が時間をかけて作った選りすぐりの問題集を配布しております。分級教室で皆さんをお待ちしております！"),
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
                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK3%2Fs-%E6%95%B0%E7%A0%94%E3%83%AD%E3%82%B4.jpg?alt=media&token=ef176a0b-c6a0-43c9-868c-d2c31e32f022'),
                            ),
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC4%2Fs-%E6%9B%B8%E9%81%93%E9%83%A8%E3%83%AD%E3%82%B4.jpg?alt=media&token=c6975c3d-f8c4-4cc2-bd6f-ecc594d3481e'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "書道部",
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
                                                "今年の書道部展示のテーマは「再生」。COVID19の蔓延や震災後10年の節目である2021年を人々や社会が災禍を乗り越え力強く前に進む姿を描いています。その他、書道部員の日常活動の作品の展示やワークショップも行っています！中2 A・B組でお待ちしています！"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC4%2Fs-%E6%9B%B8%E9%81%93%E9%83%A8%E3%83%AD%E3%82%B4.jpg?alt=media&token=c6975c3d-f8c4-4cc2-bd6f-ecc594d3481e'),
                                ),
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
                        Container(
                          child: Column(
                            children: <Widget>[
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC4%2Fs-ASET_%E3%83%AD%E3%82%B4.jpg?alt=media&token=a2da2da7-5899-4b79-9219-7c4135095069'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "特撮研究会",
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
                                                "「お前らの特撮って、奥深くないか？」浅野学園特撮研究会は、そんな特撮作品について研究しています。研究し、演技し、動画にして。前回の打越祭から1年。進化した展示をどうぞご覧下さい！"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC4%2Fs-ASET_%E3%83%AD%E3%82%B4.jpg?alt=media&token=a2da2da7-5899-4b79-9219-7c4135095069'),
                                ),
                              ),
                              Text(
                                '特撮研究会',
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC4%2Fs-AQS%20%E3%83%AD%E3%82%B4%E2%85%A0.jpg?alt=media&token=42faa1e4-6895-4fee-854a-dc9b17cd8409'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "クイズ研究会",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（中2D）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "あなたの知識の全てが武器となる。知識を問う、単純だが奥深い競技で、友達や、この文化祭で知り合った仲間と真剣勝負をしよう。早押しクイズ体験 挑戦者募集中。"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC4%2Fs-AQS%20%E3%83%AD%E3%82%B4%E2%85%A0.jpg?alt=media&token=42faa1e4-6895-4fee-854a-dc9b17cd8409'),
                                ),
                              ),
                              Text(
                                'クイズ研究会',
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC4%2Fs-%E3%81%82%E3%81%95%E3%81%AE%E5%A5%B3%E5%AD%A6%E5%9C%92%E3%83%AD%E3%82%B4.jpg?alt=media&token=ab277c47-f294-4350-93dc-e79189283196'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "あさの女学園",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（中2EF）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "来場者諸君に朗報だ！今ならカワイイ女子(?)達が接客してくれるあさの女学園が開催中だ。君の一票がすべてを変える人気投票もやってるから来てね♡"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC4%2Fs-%E3%81%82%E3%81%95%E3%81%AE%E5%A5%B3%E5%AD%A6%E5%9C%92%E3%83%AD%E3%82%B4.jpg?alt=media&token=ab277c47-f294-4350-93dc-e79189283196'),
                                ),
                              ),
                              Text(
                                'あさの女学園',
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
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK4%2Fs-%E3%83%97%E3%83%AD%E9%87%8E%E7%A0%94%E3%83%AD%E3%82%B4.jpg?alt=media&token=d9649330-faa0-4c0f-8316-9b3294b5e2e1'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "プロ野球研究会",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Text(
                                              "（高二A）",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "新子安最大のボールパーク誕生！今年は更にパワーアップして帰ってきた！我々はあなたに最高の時間と環境を提供出来ます。実際のプロの試合の放送や、様々な研究、そしてサイングッズの展示やってます！そこのあなた！！ぜひ1度足を運んでみてください。"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK4%2Fs-%E3%83%97%E3%83%AD%E9%87%8E%E7%A0%94%E3%83%AD%E3%82%B4.jpg?alt=media&token=d9649330-faa0-4c0f-8316-9b3294b5e2e1'),
                                ),
                              ),
                              Text(
                                'プロ野球研究会',
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK4%2Fs-%E8%BF%91%E4%BB%A3%E5%8F%B2%E7%A0%94%E3%83%AD%E3%82%B4%EF%BC%88%E6%9C%AC%EF%BC%89.jpg?alt=media&token=80850b1e-03df-430b-a604-4e87006a53ba'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "近代史研究会",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（高二B）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "戦車、軍艦等の模型展示に加えて軍事、歴史に関するレポート等の展示を行っています。歴史や軍事に興味がある人にもあまり興味がない人にも面白いと思っていただけるような展示を行っておりますので少しでも気が向いたらぜひ中学棟5階A組教室までお越しください！"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK4%2Fs-%E8%BF%91%E4%BB%A3%E5%8F%B2%E7%A0%94%E3%83%AD%E3%82%B4%EF%BC%88%E6%9C%AC%EF%BC%89.jpg?alt=media&token=80850b1e-03df-430b-a604-4e87006a53ba'),
                                ),
                              ),
                              Text(
                                '近代史研究会',
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
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        insetPadding: EdgeInsets.all(10),
                                        title: Row(
                                          children: [
                                            Container(
                                              height: 60,
                                              width: 60,
                                              child: Image.network(
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK4%2Fs-%E3%81%8A%E5%8C%96%E3%81%91%E5%B1%8B%E6%95%B7%E3%83%AD%E3%82%B4.jpg?alt=media&token=29c3a4ce-57b3-4d8d-b4b9-4ee7eff2416f'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "子安台第三学園\n（高二C-F）",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "今年度は一風変わったお化け屋敷をお届け。VRでこの学校の”不死議”な夜をお楽しみ下さい。"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK4%2Fs-%E3%81%8A%E5%8C%96%E3%81%91%E5%B1%8B%E6%95%B7%E3%83%AD%E3%82%B4.jpg?alt=media&token=29c3a4ce-57b3-4d8d-b4b9-4ee7eff2416f'),
                                ),
                              ),
                              Text(
                                '子安台第三学園',
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK4%2Fs-%E9%89%84%E9%81%93%E7%A0%94%E7%A9%B6%E9%83%A8%E3%83%AD%E3%82%B4%E3%83%9E%E3%83%BC%E3%82%AF.jpg?alt=media&token=ba842e59-8b54-4620-9608-3c8aeca94cb3'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "鉄道研究部",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（選択3・4）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "鉃道研究部は、第41回打越祭に向け現在展示を鋭意製作中です！模型班は、今年は毎年恒例の模型の体験運転やジオラマのみならず、プログラミングを用いた鉄道模型の自動運転等様々な新展示を企画しています。研究班は、壁研やクイズ、部誌の配布の他、自由研究発表にも力を入れています。皆様、是非是非お越しください！！"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK4%2Fs-%E9%89%84%E9%81%93%E7%A0%94%E7%A9%B6%E9%83%A8%E3%83%AD%E3%82%B4%E3%83%9E%E3%83%BC%E3%82%AF.jpg?alt=media&token=ba842e59-8b54-4620-9608-3c8aeca94cb3'),
                                ),
                              ),
                              Text(
                                '鉄道研究部',
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
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC5%2Fs-UOKEN%20%E3%83%AD%E3%82%B4.jpg?alt=media&token=eba6d82b-8b8a-4aef-9320-6e290cdbda10'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "UOKEN",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（中3D）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "浅野の魚好きが集まったUOKEN、初出展！釣り日記、熱帯魚、淡水魚など幅広い活動内容を展示しています。アクアリウムで癒されてみませんか？"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC5%2Fs-UOKEN%20%E3%83%AD%E3%82%B4.jpg?alt=media&token=eba6d82b-8b8a-4aef-9320-6e290cdbda10'),
                                ),
                              ),
                              Text(
                                'UOKEN',
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC5%2Fs-%E3%83%AD%E3%82%B4.jpg?alt=media&token=55f647f9-a585-43b4-8a15-739051555e1f'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "りすのおうち",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（中3EF）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "今年もりすのおうちがやってきた！おしゃれな装飾と丁寧なサービスで温かくお迎えします！ぜひいらしてください！"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC5%2Fs-%E3%83%AD%E3%82%B4.jpg?alt=media&token=55f647f9-a585-43b4-8a15-739051555e1f'),
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK5%2Fs-%E3%82%A2%E3%82%B5%E3%83%8E%E5%A4%A7%E5%85%A8%E3%80%80%E3%83%AD%E3%82%B4.jpg?alt=media&token=3348a3b0-e04d-4f5c-a37a-24aa2ed4a921'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "アサノ大全",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（高三C）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "ここアサノ大全ではオセロやチェス等のお手軽なボードゲームから、カジノで楽しめるような本格的なポーカー、ブラックジャック、ルーレット、麻雀等のテーブルゲームを取り揃えています！本場さながらの臨場感で様々な遊びを楽しめます！高校棟5階、高3Ｃ組でお待ちしています！"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK5%2Fs-%E3%82%A2%E3%82%B5%E3%83%8E%E5%A4%A7%E5%85%A8%E3%80%80%E3%83%AD%E3%82%B4.jpg?alt=media&token=3348a3b0-e04d-4f5c-a37a-24aa2ed4a921'),
                                ),
                              ),
                              Text(
                                'アサノ大全',
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK5%2Fs-ARCHERz%E3%80%80%E3%83%AD%E3%82%B4.jpg?alt=media&token=6d0c5103-6eef-4220-8a49-a08d7ea8b29b'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "ARCHERz",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（高三DE）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "ARCHERzでは実際に弓を使って矢を撃つことができます。オリンピックでも盛り上がったアーチェリー、是非この機会に挑戦してみては？高校棟5階高三D,E組教室でお待ちしております！"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK5%2Fs-ARCHERz%E3%80%80%E3%83%AD%E3%82%B4.jpg?alt=media&token=6d0c5103-6eef-4220-8a49-a08d7ea8b29b'),
                                ),
                              ),
                              Text(
                                'ARCHERz',
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK5%2Fs-%E7%99%BB%E5%B1%B1%E9%83%A8%E3%83%AD%E3%82%B4.jpg?alt=media&token=9465f329-4afe-4266-b404-58f5977be49e'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "登山部",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（高三G）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "現在登山に行けていませんが、山に行ける日を夢見て、部員一同、その日が来たらいつでも出かけられるよう準備しています。山に登ったことがある方もない方も気軽にお立ち寄りください。テントの張り方や山ごはんの展示、クイズなど楽しい情報が盛りだくさん！高三選択６教室で待っています！"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK5%2Fs-%E7%99%BB%E5%B1%B1%E9%83%A8%E3%83%AD%E3%82%B4.jpg?alt=media&token=9465f329-4afe-4266-b404-58f5977be49e'),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(
                            children: <Widget>[
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK5%2Fs-%E3%83%AD%E3%82%B4%20%E3%81%AE%E3%82%B3%E3%83%94%E3%83%BC.jpg?alt=media&token=d45a4be8-118c-4232-a647-7c8ec6a5595a'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "レトロ喫茶「勝」\n（高三F）",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "剣道部による伝説の喫茶店「勝」がついに復活しました。ノスタルジックでレトロな雰囲気の店内でゆっくりとくつろげること間違いなし！ぜひ純喫茶「勝」に足を運んでください！"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK5%2Fs-%E3%83%AD%E3%82%B4%20%E3%81%AE%E3%82%B3%E3%83%94%E3%83%BC.jpg?alt=media&token=d45a4be8-118c-4232-a647-7c8ec6a5595a'),
                                ),
                              ),
                              Text(
                                'レトロ喫茶「勝」',
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK5%2Fs-%E6%AD%B4%E7%A0%94_page-0001%E3%83%AD%E3%82%B4.jpg?alt=media&token=cdec897d-22c0-4333-88d4-f035f5ec2f58'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "歴史研究部",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（選択5）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "今年のテーマは「北条五代」！大迫力の模型と、分かりやすい解説でお送りする歴史展示を、今年もお送りいたします。世代交代した歴研を、ぜひ楽しんでいってください。当日は研究をまとめた部誌も用意しています。"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FK5%2Fs-%E6%AD%B4%E7%A0%94_page-0001%E3%83%AD%E3%82%B4.jpg?alt=media&token=cdec897d-22c0-4333-88d4-f035f5ec2f58'),
                                ),
                              ),
                              Text(
                                '団体名',
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
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FKLive%2Fs-Jazz.pdf.jpg?alt=media&token=09c2347d-f461-4ff4-9f62-cbeaf12f8c3c'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "メロンフラッペ",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（講堂）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "メロンフラッペジャズオーケストラ 我々は中学棟2階の講堂でジャズの演奏を行います。BGM等としてジャズを耳にすることはあっても生の楽器が奏でる演奏を聞く機会はあまりないのではないでしょうか。是非アツい（？）男たちが奏でるホットな（！）Jazzをクールな講堂でお楽しみ下さい！"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FKLive%2Fs-Jazz.pdf.jpg?alt=media&token=09c2347d-f461-4ff4-9f62-cbeaf12f8c3c'),
                                ),
                              ),
                              Text(
                                'メロンフラッペ',
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FKLive%2Fs-%E5%8A%87%E5%9B%A3%E3%81%93%E3%81%8E%E3%81%A8%E3%83%AD%E3%82%B4.jpg?alt=media&token=bcd74126-d322-4443-8581-9e2f26f4e1fd'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "劇団こぎと",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（講堂）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "こんにちは！！コロナ禍で色々と制限はされていますが、団員一丸となって、頑張ります。ぜひ、私たちのドラマを観にお越しください！"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FKLive%2Fs-%E5%8A%87%E5%9B%A3%E3%81%93%E3%81%8E%E3%81%A8%E3%83%AD%E3%82%B4.jpg?alt=media&token=bcd74126-d322-4443-8581-9e2f26f4e1fd'),
                                ),
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FKLive%2Fs-Juggling%2BArt%2BAsano%2B%E3%83%AD%E3%82%B4.pdf.jpg?alt=media&token=d528d886-4880-4d6b-b13a-20309f91fda5'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "ジャグリング部",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（講堂）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "どうもこんにちは、文化祭の花形、ジャグリング部です！僕たちは、講堂、アリーナにて、ボールやディアボロをはじめとした、様々な道具を用いたパフォーマンスを披露します。部員たちの魅せる技の数々を、是非ご覧あれ‼"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FKLive%2Fs-Juggling%2BArt%2BAsano%2B%E3%83%AD%E3%82%B4.pdf.jpg?alt=media&token=d528d886-4880-4d6b-b13a-20309f91fda5'),
                                ),
                              ),
                              Text(
                                'ジャグリング部',
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC3%2Fs-%E3%83%87%E3%82%A3%E3%83%99%E3%83%BC%E3%83%88%E9%83%A8%E3%83%AD%E3%82%B4.jpg?alt=media&token=4cb60c87-c28b-4669-bdea-5db5a0ec6c43'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "ディベート部",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（講堂）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "浅野学園ディベート部です！ディベート部では、ディベートと模擬国連の２つの活動を行っており、世界大会出場経験アリ！教室では、それらの活動についての紹介や、ディベートの実演を行っています！また、文化祭2日目に講堂での英語ディベートの実演を予定しています！ぜひ見に来て下さい！"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FC3%2Fs-%E3%83%87%E3%82%A3%E3%83%99%E3%83%BC%E3%83%88%E9%83%A8%E3%83%AD%E3%82%B4.jpg?alt=media&token=4cb60c87-c28b-4669-bdea-5db5a0ec6c43'),
                                ),
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
                        'アリーナステージ',
                        style: TextStyle(
                          fontSize: 30,
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
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FALive%2Fs-AwO%E3%83%AD%E3%82%B4-%E3%83%AA%E3%83%94%E3%83%BC%E3%83%88%E7%99%BD-AsanoWindOrchestra.pdf.jpg?alt=media&token=caa780a0-8faa-43aa-ac02-eb9219d3f7a1'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "吹奏楽部",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（ステージ）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "コロナ禍が始まって以来第62回定期演奏会の中止など様々な制約を受けてき た当部ですが、厳しい制約の中でもコンクール出場など着実に成長して参りました。コンク ールで演奏した曲から誰もが聞いたことのあるあの映画音楽まで、幅広い曲で皆様をおもて なしいたします！ "),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FALive%2Fs-AwO%E3%83%AD%E3%82%B4-%E3%83%AA%E3%83%94%E3%83%BC%E3%83%88%E7%99%BD-AsanoWindOrchestra.pdf.jpg?alt=media&token=caa780a0-8faa-43aa-ac02-eb9219d3f7a1'),
                                ),
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
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FKLive%2Fs-Juggling%2BArt%2BAsano%2B%E3%83%AD%E3%82%B4.pdf.jpg?alt=media&token=d528d886-4880-4d6b-b13a-20309f91fda5'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "ジャグリング部\n（ステージ）",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "どうもこんにちは、文化祭の花形、ジャグリング部です！僕たちは、講堂、アリーナにて、ボールやディアボロをはじめとした、様々な道具を用いたパフォーマンスを披露します。部員たちの魅せる技の数々を、是非ご覧あれ‼"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FKLive%2Fs-Juggling%2BArt%2BAsano%2B%E3%83%AD%E3%82%B4.pdf.jpg?alt=media&token=d528d886-4880-4d6b-b13a-20309f91fda5'),
                                ),
                              ),
                              Text(
                                'ジャグリング部',
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
                      padding: EdgeInsets.all(8.0),
                      height: 68,
                      child: Text(
                        'アリーナ',
                        style: TextStyle(
                          fontSize: 30,
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
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FArena%2Fs-Cooland%E3%80%80%E3%83%AD%E3%82%B4.pdf.jpg?alt=media&token=2bc0813e-5c39-45b1-bb45-4601a2cad3bd'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "Cooland",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（アリーナ）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "東京五輪の卓球は盛り上がりましたね！Coolandでは、そんな卓球のミニゲームを楽しむことができます。ぜひ来てください。"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2FArena%2Fs-Cooland%E3%80%80%E3%83%AD%E3%82%B4.pdf.jpg?alt=media&token=2bc0813e-5c39-45b1-bb45-4601a2cad3bd'),
                                ),
                              ),
                              Text(
                                'Cooland',
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
                              new GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2Fseiwa%2Fs-%E5%9B%B3%E6%9B%B8%E7%A0%94.jpg?alt=media&token=cdee3358-1676-4353-82aa-b8538899cc45'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "図書研究部",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（清話書林）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "本と熱意がぶつかり合う、書評合戦「ビブリオバトル」の実施中。部員の想いを書き連ねた部誌「Node」を配布中。ぜひお越しください。"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2Fseiwa%2Fs-%E5%9B%B3%E6%9B%B8%E7%A0%94.jpg?alt=media&token=cdee3358-1676-4353-82aa-b8538899cc45'),
                                ),
                              ),
                              Text(
                                '図書研究部',
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
                                                  'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2Fseiwa%2Fs-%E5%9B%B3%E6%9B%B8%E9%A4%A8%E3%80%80%E6%96%87%E5%8C%96%E7%A5%AD%E7%94%A8%E3%83%AD%E3%82%B4%E3%80%80%EF%BC%91%20(2).jpg?alt=media&token=0a1269a6-0a6a-458e-a8f4-24b1099f4702'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 16,
                                              ),
                                            ),
                                            Text(
                                              "古本バザー",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              "（清話書林）",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        content: Wrap(
                                          children: <Widget>[
                                            Text(
                                                "生徒や保護者の皆さまからお寄せいただいた本を販売する古本バザー、今年も清話書林二階で行います。また今年の新しい企画として図書委員がテーマに沿って清話書林の蔵書からおすすめの本を紹介しています。この機会に珠玉の一冊を見つけていただければと思います"),
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
                                      'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%83%AD%E3%82%B4%2Fseiwa%2Fs-%E5%9B%B3%E6%9B%B8%E9%A4%A8%E3%80%80%E6%96%87%E5%8C%96%E7%A5%AD%E7%94%A8%E3%83%AD%E3%82%B4%E3%80%80%EF%BC%91%20(2).jpg?alt=media&token=0a1269a6-0a6a-458e-a8f4-24b1099f4702'),
                                ),
                              ),
                              Text(
                                '古本バザー',
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
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ufoff/group_list_page/pdf_view_page.dart';
import 'package:ufoff/quiz_view_page/quiz_view_page.dart';

class QuizListPage extends StatelessWidget {
  Color _color;
  QuizListPage(this._color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86.0),
        child: AppBar(
          backgroundColor: _color,
          leading: SizedBox(
            width: 20,
            height: 20,
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              '問題一覧',
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
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
      body: GridView.count(
        childAspectRatio: 0.7,
        crossAxisCount: 3, // 1行に表示する数
        crossAxisSpacing: 4.0, // 縦スペース
        mainAxisSpacing: 4.0, // 横スペース
        shrinkWrap: true,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepOrangeAccent),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問1',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Colors.deepOrangeAccent,
                        '問1',
                        'この図は、ある学校の地図を表しています。どこの地図かわかりますか？',
                        'この図は、浅野の建物の地図を表しており、平仮名はその名称の頭文字を表しています。よって、答えは清話書林の「せ」となります。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-1.pdf?alt=media&token=0ebf4292-b557-4b81-a7b5-b4ac1c101943'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(93, 255, 43, 1)),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問2',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Color.fromRGBO(93, 255, 43, 1),
                        '問2',
                        '両端に赤と青があること、7つあることに注目です。',
                        '上の図は、「にち、げつ、か、すい、もく、きん、ど」を左から順に縦に七つ並べたもので、図を埋めると、答えは「かいすいよく」となります。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-2.pdf?alt=media&token=6eedc1df-3003-4f81-b327-6b33df2e4e04'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(205, 43, 255, 1)),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問3',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Color.fromRGBO(205, 43, 255, 1),
                        '問3',
                        '右の言葉を感じに書き換えてみましょう。',
                        '右のカタカナを漢字に直すと、〇は空、△は手、□は剣、☆は道、♡は裏となるので答えは「♡☆＝裏道」となります。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-3.pdf?alt=media&token=c1d7e183-e0ba-46f6-8702-61f7c5eddb1e'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlueAccent),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問4',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Colors.lightBlueAccent,
                        '問4',
                        '右の数字は、左のボールを使うスポーツに関係しています。',
                        '右の数字は左のボールを使うスポーツの1チームのプレイヤー数を表しています。よって、答えはサッカーのプレイヤー数「11」です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-4.pdf?alt=media&token=0596d104-a29b-4f35-8330-c13ece1c71cf'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepOrangeAccent),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問5',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Colors.deepOrangeAccent,
                        '問5',
                        'この図はある場所を上から見たものです。',
                        '図は、野球の守備時のポジションの頭文字を表しているので、答えは「レ」です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-5.pdf?alt=media&token=3e3ae416-2205-45d4-a0b8-f5a46316956d'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(93, 255, 43, 1)),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問6',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Color.fromRGBO(93, 255, 43, 1),
                        '問6',
                        '英語を日本語に直してみましょう。',
                        '英語を日本語に直すと、EAST＝「ひ」が「し」、CHEMISTRY＝「か」が「く」、SEARCHは「さ」が「す」、SMILE＝「え」が「お」より、左の語句の中の一文字を変化させたものが、右の語句であるとわかります。よって、答えは「ていおん」です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-6.pdf?alt=media&token=0630abc9-a72e-4287-b66b-f69cc5fac544'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(205, 43, 255, 1)),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問7',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Color.fromRGBO(205, 43, 255, 1),
                        '問7',
                        '「123の歌」はこの問題を解いているあなたも絶対にしています。',
                        '1234567はドレミファソラシを表しています。よって、54＝ソファとなります。左側のモノに対して行う行為を右側の動詞としているので、答えは「③のsit」です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-7.pdf?alt=media&token=3d5dfbc1-d100-4d96-9c28-b6e2528ebd7d'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlueAccent),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問8',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Colors.lightBlueAccent,
                        '問8',
                        '全ての漢字をひらがなに直してしてみましょう。',
                        '平仮名に置き換えると、「いち(1)ょう」→「に(2)ょう」、「に(2)し→し(4)し」、「さん(3)ろ→ろく(6)ろ」となり、右の語句は左の語句に含まれる数字を2倍して共通の文字をつけたものになっています。よって、「し(4)ょう→はち(8)ょう」より、答えは「はちょう」です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-8.pdf?alt=media&token=125e0886-bb1b-4310-af8c-a291ec2ff433'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepOrangeAccent),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問9',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Colors.deepOrangeAccent,
                        '問9',
                        '左のひらがなをカタカナに、右のひらがなを漢字にしてみましょう。',
                        '左をカタカナ、右側の漢字に置き換えてみると、タト→外、ナエ→左、イム→仏、チロ→舌となり、左側のカタカナを組み合わせた漢字が右側にあるとわかるので、答えは「舌」となります。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-9.pdf?alt=media&token=49305b5d-25a5-4b99-bfdc-1d39752453d7'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(93, 255, 43, 1)),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問10',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Color.fromRGBO(93, 255, 43, 1),
                        '問10',
                        '2段階の謎解きです。まず最初は、この図が何を表しているのかを考えましょう。「私たちは？にいる」・「TとSが大きい」ことがヒントです。そして次に、そこで導き出されたものを他の言葉に置き換えてみましょう。「て」「か」がひらがなであることがヒントです。',
                        'この図は太陽系の惑星を表しており、名称に曜日が入っているものはその英語の頭文字を、それ以外のものは惑星の名称の頭文字が日本語で書かれています。「？」の惑星は地球で、地球を表す曜日はないので答えは「ち」となります。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-10.pdf?alt=media&token=01581819-40a3-4246-9878-fb84514bf9f2'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(205, 43, 255, 1)),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問11',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Color.fromRGBO(205, 43, 255, 1),
                        '問11',
                        '定番のあるなしクイズ！この問題の場合は言葉の語尾に「付く」「付かない」です。',
                        '「ある」の方側の言葉の語尾に「パン」をつけると、上からプロパン、フライパン、カンパン、運搬のように、別の語句になるので、フランス→フランスパンより、フランスはあるに入ります。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-11.pdf?alt=media&token=961cdb2e-7f33-4268-9b7f-1f677a38fa7e'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlueAccent),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問12',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Colors.lightBlueAccent,
                        '問12',
                        'BとDから考えてみましょう。AとCには数字が入ります。',
                        'それぞれA＝九、B＝転、C＝十、D＝起が入るので順番に読むと答えは「九転十起」となります。浅野の校訓ですね。正直に言うと、これを合わせるために「九」と、とりわけ「十」は無理をしてしまいました。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-12.pdf?alt=media&token=dc5f8e29-38f8-4a8b-9481-51088bd3e9bb'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepOrangeAccent),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問13',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Colors.deepOrangeAccent,
                        '問13',
                        'これまた2段階の謎解きです。まず、□が何を表しているのかに注目です。1が赤であることに注目してみましょう。□が表している者に分かれば、そのモノの特性から式の意味が分かるはずです。',
                        '□とその中の数字はサイコロの目を表しており、その反対側の目を計算すると、6+2=8、5-4=1、3×1=3、4÷2=2より、答えは「2」です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-13.pdf?alt=media&token=155f8668-0a19-4621-8806-3e1bee1d7f30'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(93, 255, 43, 1)),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問14',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Color.fromRGBO(93, 255, 43, 1),
                        '問14',
                        'もしスペースがもっと広かったなら、僕たちはこの図に41個の「〇＝〇」の図形を加えていたでしょう。そのうちの1つは、「A=A」のすぐ上にとても広いスペースを取ります。',
                        'この図は東北地方を表しており、左は都道府県の名称、右はその県庁所在地のローマ字表記の頭文字を表しています。宮城県の県庁所在地は「仙台」なので答えは「S」となります。東北地方だけで、わかりにくかったかもしれません。より良い問題を作れるよう努めます。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-14.pdf?alt=media&token=b9c491f5-2e68-4945-8243-8807e88e8d68'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(205, 43, 255, 1)),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問15',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Color.fromRGBO(205, 43, 255, 1),
                        '問15',
                        '左の言葉をイラストにしてみましょう。どこかで見覚えがあるはずです。ちなみに、右側のアルファベットは頭文字です。',
                        '左側は有名SNSのアイコン、右側はそのSNSの名称の頭文字を表しています。よって吹き出し→LINE、カメラ→インスタ、f→Facebook、鳥→Twitterなので答えは「T」です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-15.pdf?alt=media&token=a16478ac-d665-4478-b5e5-1e8553de37e0'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlueAccent),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問16',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Colors.lightBlueAccent,
                        '問16',
                        'ずばり国旗です。同じ記号は同じ色を表します。',
                        '図は、国旗と国の漢字表記を表しています。△□〇→青白赤、☆□〇→緑白赤、〇□△→赤白青からオランダとなり、答えは「蘭」です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-16.pdf?alt=media&token=b35725d0-612b-4c59-9d93-a233b5feed12'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepOrangeAccent),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問17',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Colors.deepOrangeAccent,
                        '問17',
                        '左下のoはoneを表しています。また、もしスペースが広かったのなら、f→Fの上には、s→S、s→S…と書いたでしょう。あっ、それ以降はいくつ書いても左右すべて共通でした。',
                        '左は基数の、右は序数の頭文字を表しています。one→first、two→second、third→three、four→fourth、five→fifthとなり、答えは「first」です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-17.pdf?alt=media&token=ed070bf2-e13b-4156-a7a9-0bd01a12ef9a'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(93, 255, 43, 1)),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問18',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Color.fromRGBO(93, 255, 43, 1),
                        '問18',
                        '□は男性、○は女性を表しています。これが家系図なのは一目瞭然ですが、数字が何を表しているのかが問題です。あてはまる言葉を英語に置き換えてみるとわかるかもしれません。',
                        'この図は、□を男性、〇を女性とした家系図を表しています。♢マークからみた立場を英語で言い換えた文字数を表しています(例：④＝aunt＝おば)。「？」は「♢」の兄弟を表しているので、brotherより答えは「7」です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-18.pdf?alt=media&token=e62b3034-3283-4f86-b344-6e65be6806c8'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(205, 43, 255, 1)),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問19',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Color.fromRGBO(205, 43, 255, 1),
                        '問19',
                        '今回のあるなしクイズは、言葉に「含まれている」「含まれていない」です。ある側の言葉を漢字ごとに区切ってひらがなにしてみましょう。',
                        '「ある」の方側の言葉には、方角を表す平仮名2文字「とう、ざい、なん、ぼく」が入っています。例えば、砂糖はさ「とう」となります。よって、財閥は「ある」に入ります。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-19.pdf?alt=media&token=59101b08-c56b-4a58-a301-ba97ff87201d'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlueAccent),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問20',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Colors.lightBlueAccent,
                        '問20',
                        '①②は南米、③④は東南アジア、④⑤⑥は中東、⑦⑥⑧はアフリカの国名がそれぞれ入ります。',
                        '語句は上から、エビチリ、体当たり、回覧板、√(根号)となるので、1,6,3,4の文字を当てはめて答えは「賃貸」です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-20.pdf?alt=media&token=b2d39b23-731d-4880-b88e-762ac2e6acbe'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepOrangeAccent),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問21',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Colors.deepOrangeAccent,
                        '問21',
                        '矢印はカタカナの変化を表しています。同じ記号の場所には同じ文字が入ります。',
                        '左の言葉は下から、アサリ、クサリ、クスリ、ヤスリ、ヤスミとなり、答えは「ヤスミ(休み)」です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-21.pdf?alt=media&token=a0094b67-176b-4b5b-a8c5-f96e1e6ec664'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(93, 255, 43, 1)),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問22',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Color.fromRGBO(93, 255, 43, 1),
                        '問22',
                        '今回のあるなしクイズも、言葉に「含まれている」「含まれていない」です。ある側の言葉をひらがなに置き換えてみましょう。',
                        '「ある」の方側の言葉には、動物の名前が含まれています。落第には「らくだ」が含まれているので、「ある」に入ります。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-22.pdf?alt=media&token=d4d8fc8a-f6e1-45fe-b83a-1767a48f170b'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(205, 43, 255, 1)),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問23',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Color.fromRGBO(205, 43, 255, 1),
                        '問23',
                        '浮かび上がる人物は鎌倉時代の人物です。',
                        '□に当てはまる具体的な名称を入れて出来上がる人物は、茶=ほうじ、虫=うじ、鳥=とき、体の部位＝むねより、答えは「北条時宗」です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-23.pdf?alt=media&token=d00b7d1c-426d-4943-9193-631c78be4726'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlueAccent),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問24',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Colors.lightBlueAccent,
                        '問24',
                        '最初の3つの言葉を見るとしりとりのようですが、後ろの3つを見ると違うことが分かります。言葉を英語に置き換えてみると解決の糸口が見つかるかもしれません。',
                        '書かれている言葉を英語に直すと、ghost→stone→new year→□→challenge→genius→useとなり、末尾に字を取るしりとりとなっています。よって、□に当てはまる言葉は「arch」となり、これは「半円形のもの」を意味するので、答えは②です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-24.pdf?alt=media&token=bb7f9e3d-63cd-486e-804d-c1ade4c104dd'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepOrangeAccent),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問25',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Colors.deepOrangeAccent,
                        '問25',
                        'M1はMの1番目、M2はMの2番目ということを表します。問題に書かれていない「F,D」を加えた、12種類があります。',
                        'アルファベットは12の月の英語の頭文字を表しており、下についている数字は同じ頭文字の月のうち1月から数えたときの順番を表しています。よって、M1+M2=3+5=8　A1+A2=4+8=12　J1+J2+J3=1+6+7=14となり、A1+S-A2+N-O=4+9-8+11-10から、答えは「6」です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-25.pdf?alt=media&token=d7a76f38-8a7d-4c31-b6c8-2ce4377a15d1'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(93, 255, 43, 1)),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問26',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Color.fromRGBO(93, 255, 43, 1),
                        '問□',
                        '問題番号が記載されていないのがヒントです。漢字を意識すれば答えが出てくるかもしれません。',
                        'この問題にだけ番号が振られていないことに注目してみましょう。このとき、□を「くにがまえ」とみると、①は国、②は固、③は囲となりますが、④の羽にくにがまえはつきません。したがって、答えは④です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-26.pdf?alt=media&token=993b0cb4-156a-4a91-bcbc-819be1a7821f'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(205, 43, 255, 1)),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問27',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Color.fromRGBO(205, 43, 255, 1),
                        '問27',
                        '字体が変なのは、作成者による気まぐれです。この問題は単なる一筆書きです。通った順にアルファベットを並び替え、その英文に答えましょう。',
                        '与えられた図形を、全てのマスを通るように一筆書きすると、「What is the largest country in the world?」の文章が浮かび上がります。よって、答えは「ロシア連邦」です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-27.pdf?alt=media&token=7f5dc35b-11f3-42ed-a950-091e6c568493'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlueAccent),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問28',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Colors.lightBlueAccent,
                        '問28',
                        '図の関係を式で表してみるとわかります。',
                        '数直線を不等式で表すと、それぞれ-2≦X、-2＜X≦3。これを「7」が横に倒れていることと照らし合わせると、この不等号はアラビア数字をローマ数字に変換し、時計回りに90度回転したものであることが分かります(7→Ⅶ)。□には＜が入るので、答えは「5」です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-28.pdf?alt=media&token=11ca4364-64d0-4de4-82f6-f29fb2f8dd2a'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepOrangeAccent),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問29',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Colors.deepOrangeAccent,
                        '問29',
                        '右側の漢字をひらがなに置き換えてみましょう。数字と平仮名が対応しています。ちなみに、「121」は「12と1」、「1012」は「10と12」に分けます。',
                        '46を4,6に、121を12,1に、1012を10,12に、37を3,7に分けます。そして、分けられた数字のそれぞれが干支を表すと考えると、1=ね、2=うし、3=とら、4=う…となります。同様に考えると、37は「とら」「うま」となり、答えは「トラウマ」です。',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-29.pdf?alt=media&token=dac13430-6192-44dc-83b5-5ab6fa445c9f'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(93, 255, 43, 1)),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問30',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Color.fromRGBO(93, 255, 43, 1),
                        '問30',
                        'これは「7セグメントディスプレイ」と呼ばれるものです。よく時計などの表示で見ますよね。その数字の全てに何かが欠けています。',
                        '図は、7セグメントディスプレイ(よくデジタル時計で使われるもの)の3本の横棒のうち、上2本を消したものです。0~9が並んでいるので、「？」は本来「8」があったと考えられます。ここから横棒2本が引かれるので、答えは「U」です。 ',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-30.pdf?alt=media&token=0e5bcf7a-6881-4f42-8414-ba15a3e82376'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(205, 43, 255, 1)),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問31',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Color.fromRGBO(205, 43, 255, 1),
                        '問31',
                        '左の言葉を英語に置き換え、そのアルファベットを右のマス上でなぞってみてみましょう。',
                        '右のマスに書かれた数字は、左の語句を3×3のマスの中に英語で表現するときにそれぞれのマスが使用された回数を表しています。東京(TOKYO)を表現するとき、「？」のマスが使用されるのはOを書く時だけなので、答えは「2」です。  ',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-31.pdf?alt=media&token=5593ed48-dc22-4575-81cd-c705d41937cd'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlueAccent),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '問32',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(
                        Colors.lightBlueAccent,
                        '問32',
                        '｢た｣を抜き、｢け｣を無視するだけでは定番ですよね。まだまだ消して無くすものがあります。',
                        '問題文の2,3行目を平仮名に直すと、「こけし が はたらき、たこやきこたえる。いけのし けした はたけ は ここ。」「たいこ の した は けした が、えられる もの＝？」となります。問題文の、「狸」「毛虫」「こけし」「話」を「た抜き」「け無視」「こ消し」「は無し」と読み取り、その指示に従うと、「しがらきやきえるいのしし」「いのししがえられるもの＝？」となるので、答えは「信楽焼」となります。 ',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E3%82%BA%2F%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99-32.pdf?alt=media&token=9059ea27-fcd5-490d-963f-dbe67a41c35c'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepOrangeAccent),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E3%82%AF%E3%82%A4%E7%A0%94%E8%A1%A8%E7%B4%99.jpg?alt=media&token=0a5f3675-c96e-49b6-ac1d-c554ca0be6ac'),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      Center(
                        child: Text(
                          '部誌',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PDF(
                        Colors.deepOrangeAccent,
                        'クイズ研究部誌',
                        'https://firebasestorage.googleapis.com/v0/b/uchikoshifesonline.appspot.com/o/%E3%82%AF%E3%82%A4%E7%A0%94%2F%E6%B5%85%E9%87%8E%E3%82%AF%E3%82%A4%E3%82%B9%E3%82%99%E7%A0%94%E7%A9%B6%E5%90%8C%E5%A5%BD%E4%BC%9A%20%E3%80%8E%E9%96%83%E3%81%8D%E3%81%AE%E5%A1%94%20%E7%AC%AC%E4%B8%80%E5%B1%A4%E3%80%8F%20%E6%94%B9%E8%A8%82%E7%89%88.pdf?alt=media&token=b66eb032-e14b-4161-99d7-800ea098ebc5'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

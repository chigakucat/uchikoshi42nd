import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:ufoff/notify_engine/notify_engine.dart' as NotifyEng;
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:ufoff/notify_engine/notify_engine.dart';
import 'package:http/http.dart' as http;

_PageLog(String Text) {
  debugPrintSynchronously("[NotifySettingPage] $Text");
}

class NotifySettingPage extends StatefulWidget {
  NotifySettingPage({
    Key key,
  }) : super(key: key);

  @override
  _NotifySettingPageState createState() => _NotifySettingPageState();
}

class _NotifySettingPageState extends State<NotifySettingPage> {
  List EventData = [];
  List fromWebEventData = [], fromFileEventData = [];
  bool AllEventNotifySchedulesReseted = false;
  final ufoNotify = NotifyEng.ufoNotify();
  Directory AppDocDir = Directory("");

  _NotifySettingPageState() {
    _refreshEventData();
  }

  void _refreshEventData() async {
    fromWebEventData = await getEventDataFromWeb();
    AppDocDir = await getApplicationDocumentsDirectory();
    try {
      fromFileEventData = jsonDecode(
          File("${AppDocDir.path}/eventdata.dat").readAsStringSync());
    } on FileSystemException catch (e) {
      fromFileEventData = fromWebEventData;
      File("${AppDocDir.path}/eventdata.dat")
          .writeAsStringSync(jsonEncode(fromWebEventData));
    }

    bool EventDataChange =
    _checkEventDataChanged(fromFileEventData, fromWebEventData);
    if (EventDataChange) {
      AllEventNotifySchedulesReseted = true;
      setState(() {EventData=fromWebEventData;});
      File("${AppDocDir.path}/eventdata.dat")
          .writeAsStringSync(jsonEncode(fromWebEventData));
    }else{
      setState(() => {EventData=fromFileEventData});
    };
    ufoNotify.initialize();
    _PageLog(fromFileEventData.toString());
  }

  Future<List> getEventDataFromWeb() async {
    http.Response responce = await http.get(Uri(scheme: "http",port: 8000,host: "127.0.0.1"));
    return jsonDecode(utf8.decode(responce.bodyBytes));
  }

  @override
  Widget build(BuildContext context) {
    if (AllEventNotifySchedulesReseted) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(""),
            actions: [
              FlatButton(
                  onPressed: () => Navigator.pop(context),
                  child:Text("OK")
              )
            ],
          )
      );
    }
    _PageLog(EventData.toString());
    return Scaffold(
        appBar: AppBar(
          title: Text("通知設定"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
              title: Text(EventData[index][0]),
              subtitle: Text(EventData[index][1]),
              leading: IconButton(
                icon: Icon(EventData[index][4]
                    ? Icons.alarm_add
                    : Icons.alarm_off),
                //EventData[index][4](現在登録中か否か)から取得してtrue/falseでIconを変更
                onPressed: EventData[index][4]
                    ? () => _onEventAlarmSetButtonPressed(index)
                    : () => _onEventAlarmUnsetButtonPressed(
                    index), //今イベントのアラームを設定中か否かでボタン押下時のコールバックを変更
              ),
            ),
            separatorBuilder: (context, index) => Divider(),
            itemCount: EventData.length));
  }

  AlertDialog _confirmSetEventNotifyDialog(eventname) => AlertDialog(
    title: Text("確認"),
    content: Text("イベント「$eventname」の時間の10分前にに通知するよう設定します。よろしいですか?"),
    actions: [
      FlatButton(
          onPressed: () => Navigator.pop(context, true), child: Text("はい")),
      FlatButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text("いいえ"))
    ],
  );

  _onEventAlarmSetButtonPressed(index) async {
    _PageLog("AlarmSetButtonPressed (id=${EventData[index][2]})");
    if (await showDialog(
        context: context,
        builder: (context) =>
            _confirmSetEventNotifyDialog(EventData[index][0]))) {
      _PageLog("Alarm Set confirmed.");
      ufoNotify.scheduleEventNotify(
          EventData[index][0],
          EventData[index][1],
          EventData[index][2],
          DateTime.parse(EventData[index][3]));
      setState(() {
        EventData[index][4] = false;
      });
      _PageLog("AlarmSet: ${EventData[index][2]}");
    } else {
      _PageLog("Alarm Set not confirmed.");
    }
  }

  AlertDialog _confirmUnsetEventNotifyDialog(eventname) => AlertDialog(
    title: Text("確認"),
    content: Text("イベント「$eventname」の時間に通知する設定を解除します。よろしいですか?"),
    actions: [
      FlatButton(
          onPressed: () => Navigator.pop(context, true), child: Text("はい")),
      FlatButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text("いいえ"))
    ],
  );

  _onEventAlarmUnsetButtonPressed(index) async {
    _PageLog("AlarmSetButtonPressed (id=${EventData[index][2]})");
    if (await showDialog(
        context: context,
        builder: (context) =>
            _confirmUnsetEventNotifyDialog(EventData[index][0]))) {
      _PageLog("Alarm Set confirmed.");
      ufoNotify.cancel(EventData[index][2]);
      setState(() {
        EventData[index][4] = true;
      });
      _PageLog("AlarmUnset: ${EventData[index][2]}");
    } else {
      _PageLog("Alarm Unset not confirmed.");
    }
  }

  bool _checkEventDataChanged(List before, List after) {
    //Check Id removed
    Set all_id_before = Set(), all_id_after = Set();
    var i1;
    for (i1 in before) all_id_before.add(i1[2]);
    for (i1 in after) all_id_after.add(i1[2]);
    !setEquals(all_id_before, all_id_after);
    return !setEquals(all_id_before, all_id_after);
  }
}

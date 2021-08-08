import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart' as NotifyLib;
import 'package:timezone/standalone.dart' as TZ;
import 'package:timezone/timezone.dart' as TZ;
import 'package:timezone/data/latest.dart' as TZ;
class ufoNotify{
  final NotifyLib.FlutterLocalNotificationsPlugin        NotificationsPlugin       =NotifyLib.FlutterLocalNotificationsPlugin();
  final NotifyLib.AndroidFlutterLocalNotificationsPlugin AndroidNotificationsPlugin=NotifyLib.AndroidFlutterLocalNotificationsPlugin();
  final NotifyLib.IOSFlutterLocalNotificationsPlugin     IOSNotificationPlugin     =NotifyLib.IOSFlutterLocalNotificationsPlugin();
  final NotifyLib.AndroidInitializationSettings          AndroidInitSettings       =NotifyLib.AndroidInitializationSettings("splash");
  final NotifyLib.IOSInitializationSettings              IOSInitSettings           =NotifyLib.IOSInitializationSettings();
  NotifyLib.InitializationSettings                 InitSettings;
  TZ.Location                                      TimezoneJapan;
  final NotifyLib.NotificationDetails                    DefaultNotifyDetails      =NotifyLib.NotificationDetails(
      android: NotifyLib.AndroidNotificationDetails(
          "eventnotify", //channelId
          "イベント時間通知", //channelName
          "イベント時間の通知", //channelDiscription
          //priority: Priority(1), //重要度(旧) なんかいらないらしい引数はコメントアウトしてあります
          //importance: Importance(5), //重要度(新)
          channelShowBadge: false
      ),
      iOS: NotifyLib.IOSNotificationDetails(
          presentAlert: true,
          presentBadge: false,
          subtitle: "イベントはあと10分後に始まります"
      )
  );
  bool                                            isInitialized             =false;
  void initialize(){
    this.InitSettings=NotifyLib.InitializationSettings(android: AndroidInitSettings,iOS:IOSInitSettings,);
    NotificationsPlugin.initialize(this.InitSettings,onSelectNotification: onNotifySelect);
    TZ.initializeTimeZones();
    print("==========Timezone database initialize finished.==========");
    this.isInitialized=true;
    TimezoneJapan=TZ.getLocation("Asia/Tokyo");
    //final detroit = TZ.getLocation('America/Detroit');
    //final detroitNow = TZ.TZDateTime.now(detroit);
  }
  Future<dynamic> onNotifySelect(String payload){
    /*未実装*/
  }
  void scheduleEventNotify(
      String title,
      String location,
      int id,
      DateTime datetime,
      {NotifyLib.NotificationDetails notificationdetails=null}
      ){
    if (notificationdetails==null) notificationdetails=DefaultNotifyDetails;
    //print("[========== Very very importance message is here! ==========>]"+TZ.local.toString());
    scheduleNotify("まもなく${title}が${location}で始まります","${datetime.hour}時${datetime.minute}分から${location}で${title}が始まります",id,TZ.TZDateTime.from(datetime,TZ.local).add(Duration(minutes: -10)),notificationdetails);
  }
  void scheduleNotify(
      String                        title,
      String                        body,
      int                           id,
      TZ.TZDateTime                 scheduledDate,
      NotifyLib.NotificationDetails notificationdetails
      ){
    NotificationsPlugin.zonedSchedule(
        id,
        title,
        body,
        scheduledDate,
        notificationdetails,
        uiLocalNotificationDateInterpretation: NotifyLib.UILocalNotificationDateInterpretation.absoluteTime,
        androidAllowWhileIdle: true
    );
  }
}

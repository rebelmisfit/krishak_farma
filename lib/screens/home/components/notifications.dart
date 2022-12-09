
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

import '../../../models/push_notifications_model.dart';
import '../../../notification_badge.dart';



class Notifications extends StatefulWidget {
  static String routeName = "/notifications";
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  //initilalize some values
  //static int value=0;
  late final FirebaseMessaging _messaging;
  late int TotalNotificationCounter;


  // model
  PushNotification? _notificationInfo;

  // register notification
  void registerNotification() async{
    await Firebase.initializeApp();
    _messaging=FirebaseMessaging.instance;

    // three type of state in notification

    NotificationSettings settings=await _messaging.requestPermission(
      alert: true,
      badge: true,
      provisional: false,
      sound: true,

    );
    if(settings.authorizationStatus== AuthorizationStatus.authorized)
      {
        print("User granted the permission ");

        // main message send from here
        FirebaseMessaging.onMessage.listen((RemoteMessage message) {
          // saving message received from the firebase to the notification model

          PushNotification notification=PushNotification(
            title: message.notification!.title,
            body: message.notification!.body,
            dataTitle: message.data['title'],
            dataBody: message.data['body'],

          );

          setState(() {
            TotalNotificationCounter++;// it is private
            //value=TotalNotificationCounter;
            _notificationInfo=notification;// it is also private
          });
          if(notification!=null)// from over lay support
            {
              showSimpleNotification(
                Text((_notificationInfo!.title!)),
                leading: NotificationBadege(totalNotification: TotalNotificationCounter),

                subtitle: Text(_notificationInfo!.body!),
                background: Colors.deepOrangeAccent,
                duration: Duration(seconds: 9),

              );
              //value=TotalNotificationCounter;
            }
        });
      }
    else{
      print("Permission declined by User");
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      PushNotification notification=PushNotification(
        title: message.notification!.title,
        body: message.notification!.body,
        dataTitle: message.data['title'],
        dataBody: message.data['body'],

      );

      setState(() {
        TotalNotificationCounter++;// it is private
        _notificationInfo=notification;// it is also private
      });
    });
    registerNotification();
    TotalNotificationCounter=0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text("Notifications"),

      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Waiting for new notifications",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 12,),
            NotificationBadege(totalNotification: TotalNotificationCounter),
            SizedBox(height: 12,),

            // if NotificationInfor is not ull
            _notificationInfo!=null ?Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("TITIE :${_notificationInfo!.dataTitle ?? _notificationInfo!.title}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(height: 12,),
                Text("BOBY :${_notificationInfo!.dataBody ?? _notificationInfo!.body}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ):Container()
          ],
        ),
      ),
    );
  }
}




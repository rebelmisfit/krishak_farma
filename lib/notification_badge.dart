import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationBadege extends StatelessWidget {
  // also take total notification value
  final int totalNotification;
  const NotificationBadege({Key? key,required this.totalNotification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color:Colors.deepOrangeAccent,
        shape: BoxShape.circle

      ),
      child: Center
        (
        child: Padding(padding: EdgeInsets.all(8),
          child: Text("$totalNotification",style: TextStyle(color: Colors.white,fontSize: 20),),

        ),
      ),
    );
  }
}

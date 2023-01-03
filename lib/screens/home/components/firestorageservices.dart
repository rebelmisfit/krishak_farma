import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
class FireStorageService extends ChangeNotifier
{
  FireStorageService();
  static Future<dynamic> loadImages(BuildContext context, String mImage ) async
  {
    return await FirebaseStorage.instance.ref().child(mImage).getDownloadURL();
  }

}
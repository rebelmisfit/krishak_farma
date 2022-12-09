
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:krishak_farma/routes.dart';
import 'package:krishak_farma/screens/splash/splash_screen.dart';
import 'package:overlay_support/overlay_support.dart';

import 'firebase_options.dart';
import 'models/add_date.dart';




Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );



  await Hive.initFlutter();//// for add product
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');










  runApp(MyApp());




}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get.lazyPut(()=>DataClass());

    // TODO: implement build

    return  OverlaySupport(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.routeName,
        routes: routes,






      ),
    );
  }

}












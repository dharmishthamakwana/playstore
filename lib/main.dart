
import 'package:flutter/material.dart';
import 'package:playstore/screen/home/provider/playstoreprovider.dart';
import 'package:playstore/screen/home/view/appiconciewpage.dart';
import 'package:playstore/screen/home/view/appviewpage.dart';
import 'package:playstore/screen/home/view/gamespage.dart';
import 'package:playstore/screen/home/view/tabbarpage.dart';
import 'package:provider/provider.dart';

import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return MultiProvider(
          providers: [ChangeNotifierProvider(create: (context) => PlayStoreProvider(),)],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: '/',
            routes: {
              // '/': (context) => TabBarPage(),
              // 'AppView': (context) => AppViewPage(),
              '/': (context) => AppIconViewPage(),
              'Games':(context) => GamesPage(),
            },
          ),
        );
      },
    ),
  );
}

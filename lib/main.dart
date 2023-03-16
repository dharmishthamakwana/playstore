
import 'package:flutter/material.dart';
import 'package:playstore/screen/basescreen/provider/baseprovider.dart';
import 'package:playstore/screen/basescreen/view/homescreen.dart';
import 'package:playstore/screen/gamescreen/tabscreen1/onescreen/view/one_screen.dart';
import 'package:playstore/screen/gamescreen/tabscreen2/scecond/view/second_view_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Baseprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Basescreen(),
          'foryou' : (context) => Foryouscreen(),
          'topview' : (context) => Topviewscreen(),
        },
      ),
    ),
  );
}
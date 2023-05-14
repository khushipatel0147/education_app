import 'package:education_app/provider/shoppingProvider.dart';
import 'package:education_app/view/homeScreen.dart';
import 'package:education_app/view/visitScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ShoppingProvider(),)
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) =>HomeScreen(),
        'visit':(context) =>VisitScreen(),
      },
    ),
  ));
}
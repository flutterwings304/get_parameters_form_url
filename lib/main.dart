import 'package:flutter/material.dart';

import 'show_url_paramaters.dart';

void main() {
  String baseUrlWeb = Uri.base.toString(); //get complete url

  String parameter1 = Uri.base.queryParameters["parameter1"] ??
      ""; //get parameter with attribute "parameter1"

  String parameter2 = Uri.base.queryParameters["parameter2"] ??
      ""; //get parameter with attribute "parameter2"
  // print("printing base url.........$baseUrlWeb");
  // print("printing parameter1.........$parameter1");
  // print("printing parameter2.........$parameter2");

  runApp(MyApp(
    parameter1: parameter1,
    parameter2: parameter2,
    baseUrlWeb: baseUrlWeb,
  ));
}

class MyApp extends StatefulWidget {
  MyApp({super.key, this.baseUrlWeb, this.parameter1, this.parameter2});
  String? baseUrlWeb, parameter1, parameter2;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
            headline2: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ShowUrl(
          baseUrl: widget.baseUrlWeb!,
          para1: widget.parameter1!,
          para2: widget.parameter2!),
    );
  }
}

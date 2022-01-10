import 'package:flutter/material.dart';
import 'package:myapp9/pages/appbar_demo.dart';

//import 'hello_demo.dart';
import 'package:myapp9/pages/appbar_demo.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext conntext) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      title: 'Flutter App Development',
      home: AppBarDemo(),
    );
  }
}

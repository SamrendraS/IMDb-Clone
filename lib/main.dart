import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'package:fmdb/theme.dart';
import 'package:fmdb/services/repository.dart';
import 'package:fmdb/services/api_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Movie Database(FMDB)',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: HomeScreen(),
    );
  }
}

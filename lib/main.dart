import 'package:flutter/material.dart';

import 'pages/pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) {
          return const FirstScreen();
        },
        '/second': (context) {
          return const SecondScreen();
        },
        '/third': (context) {
          return const ThirdScreen();
        },
      },
    );
  }
}

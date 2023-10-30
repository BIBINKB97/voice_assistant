import 'package:flutter/material.dart';
import 'package:voice_assistant/home_page/home_page.dart';
import 'package:voice_assistant/pallet/pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voice Assistant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true).copyWith(
          scaffoldBackgroundColor: Pallete.whiteColor,
          appBarTheme: AppBarTheme(backgroundColor: Pallete.whiteColor)),
      home: HomePage(),
    );
  }
}

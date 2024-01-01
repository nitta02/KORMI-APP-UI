import 'package:flutter/material.dart';
import 'package:kormi_app_ui/constants/colors.dart';
import 'package:kormi_app_ui/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KORMI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: color1,
        fontFamily: 'PTSansNarrow',
      ),
      home: const HomeScreen(),
    );
  }
}

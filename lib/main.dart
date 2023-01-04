import 'package:dashboard/style/colors.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

void main() {
  runApp(const MyApp());
}

//https://youtu.be/BAc5OHF3emU
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
          primarySwatch: Colors.red,
          scaffoldBackgroundColor: AppColors.primaryBG),
      home: const Dashboard(),
    );
  }
}

import 'package:flutter/material.dart';
// import 'package:job_finder_app/welcome/splash_page.dart';
// import 'package:job_finder_app/welcome/welcome_page.dart';

import 'features/welcome/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
       home: const SplashPage(),
    );
  }
}


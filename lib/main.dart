import 'package:flutter/material.dart';
import 'package:user_interface/register.dart';

import 'layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
      ),
      initialRoute: 'layout',
      routes: {
        'layout': (context) => Layout(),
        'register': (context) => RegisterScreen()
      },
    );
  }
}
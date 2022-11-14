import 'package:appfinal/pages/login_page.dart';
import 'package:appfinal/pages/register_page.dart';
import 'package:appfinal/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourism',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const[
        Locale("en", "UK"),
        Locale("es", "CO"),
      ],
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
    );
  }
}


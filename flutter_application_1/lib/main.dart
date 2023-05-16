import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/register_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final primaryColor = const Color(0xFF2F58CD);
  final primaryLightColor = const Color(0xFFACB1D6);
  final primaryDarkColor = const Color(0xFFDBDFEA);
  final accentColor = const Color(0xFFAFD3E2);

  @override
  Widget build(BuildContext context) {
    final themeData = ThemeData(
      primarySwatch: MaterialColor(
        primaryColor.value,
        <int, Color>{
          50: primaryColor,
          100: primaryColor,
          200: primaryColor,
          300: primaryColor,
          400: primaryColor,
          500: primaryColor,
          600: primaryColor,
          700: primaryColor,
          800: primaryColor,
          900: primaryColor,
        },
      ),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: MaterialColor(primaryColor.value, {
          50: primaryColor,
          100: primaryColor,
          200: primaryColor,
          300: primaryColor,
          400: primaryColor,
          500: primaryColor,
          600: primaryColor,
          700: primaryColor,
          800: primaryColor,
          900: primaryColor,
        }),
      ).copyWith(
        secondary: accentColor,
      ),
    );

    return MaterialApp(
      title: 'My App',
      theme: themeData,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'screens/auth/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Color _primary = const Color(0xFF6723DC);
  final Color _primaryVariant = const Color(0xFF6723FF);
  final Color _accent = const Color(0xFFA17CEA);
  final Color _secondaryVariant = const Color(0xFFA17CFF);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: _primary,
        accentColor: _accent,
        focusColor: _primary,
        splashColor: _accent,
        hintColor: Colors.blueGrey,
        errorColor: Colors.red,
        hoverColor: const Color(0xFFBDA7FF),
        colorScheme: ColorScheme(
          primary: _primary,
          primaryVariant: _primaryVariant,
          secondary: _accent,
          secondaryVariant: _secondaryVariant,
          surface: _accent,
          background: Colors.white,
          error: Colors.red,
          onPrimary: _primary,
          onSecondary: _accent,
          onSurface: _accent,
          onBackground: Colors.white,
          onError: Colors.red,
          brightness: Brightness.light,
        ),
      ),
      home: const LoginScreen(),
    );
  }
}

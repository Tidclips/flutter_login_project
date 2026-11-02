import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const carbonBlack = Color(0xFF09090B);
    const indigoAccent = Color(0xFF6366F1);

    return MaterialApp(
      title: 'Console Auth',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: carbonBlack,
        colorScheme: const ColorScheme.dark(
          primary: indigoAccent,
          surface: Color(0xFF18181B),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: carbonBlack,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFF27272A)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFF27272A)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: indigoAccent, width: 1.5),
          ),
          labelStyle: const TextStyle(color: Color(0xFFA1A1AA)),
          hintStyle: const TextStyle(color: Color(0xFF52525B)),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.resolveWith((states) {
            return states.contains(WidgetState.selected) ? indigoAccent : null;
          }),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}

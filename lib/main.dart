import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_site/webview/desktopview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = TextTheme(
      headlineLarge: GoogleFonts.robotoMono(),
      headlineMedium: GoogleFonts.robotoMono(),
      headlineSmall: GoogleFonts.robotoMono(),
      bodyLarge: GoogleFonts.robotoMono(),
      bodyMedium: GoogleFonts.robotoMono(),
      bodySmall: GoogleFonts.robotoMono(),
      displayLarge: GoogleFonts.robotoMono(),
      displayMedium: GoogleFonts.robotoMono(),
      displaySmall: GoogleFonts.robotoMono(),
      titleLarge: GoogleFonts.robotoMono(),
      titleMedium: GoogleFonts.robotoMono(),
      titleSmall: GoogleFonts.robotoMono(),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: textTheme,
        brightness: Brightness.dark,
        colorSchemeSeed: const Color(0xff00ff96),
        // colorSchemeSeed: Colors.greenAccent,
        useMaterial3: true,
      ),
      home: DesktopView(),
    );
  }
}

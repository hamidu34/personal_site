import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_site/webview/views/homeview.dart';

import 'helper/scrollbehavior.dart';
import 'webview/single_pageview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final robotoText = GoogleFonts.robotoMono();
    TextTheme textTheme = TextTheme(
      headlineLarge: robotoText,
      headlineMedium: robotoText,
      headlineSmall: robotoText,
      bodyLarge: robotoText,
      bodyMedium: robotoText,
      bodySmall: robotoText,
      displayLarge: robotoText,
      displayMedium: robotoText,
      displaySmall: robotoText,
      titleLarge: robotoText,
      titleMedium: robotoText,
      titleSmall: robotoText,
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
      home: SinglePageView(),
    );
  }
}

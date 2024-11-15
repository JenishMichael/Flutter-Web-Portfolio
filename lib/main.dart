import 'package:flutter/material.dart';
import 'package:flutter_portfolio/provider/theme_provider.dart';
import 'package:flutter_portfolio/screens/home/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ThemeProvider())],
      child: Consumer<ThemeProvider>(
        builder: (context, ThemeProviderValue, child) => MaterialApp(
          title: "Jenish Michael",
          debugShowCheckedModeBanner: false,
          theme: ThemeProviderValue.themeData,
          home: const Home(),
        ),
      ),
    ),
  );
}


// theme: ThemeData.light().copyWith(
      //   primaryColor: Colors.orange,
      //   textButtonTheme: TextButtonThemeData(
      //     style: ButtonStyle(
      //       backgroundColor: WidgetStateProperty.all(
      //           const Color.fromARGB(255, 231, 110, 76)),
      //       foregroundColor: WidgetStateProperty.all(Colors.white),
      //       shape: WidgetStateProperty.all(
      //         RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(5),
      //         ),
      //       ),
      //     ),
      //   ),
      //   elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ButtonStyle(
      //       backgroundColor: WidgetStateProperty.all(
      //           const Color.fromARGB(255, 231, 110, 76)),
      //       foregroundColor: WidgetStateProperty.all(Colors.white),
      //       shape: WidgetStateProperty.all(
      //         RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(5),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
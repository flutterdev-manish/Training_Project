import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_01/Helper/Routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, Key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Transparent status bar
      statusBarBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Project',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        // textButtonTheme: TextButtonThemeData(
        //   style: TextButton.styleFrom(
        //     foregroundColor: Colors.purpleAccent, // This is a custom color variable
        //   ),
        // ),
      ),
      // home: const HomeScreen(),
      // home: const ListScreen(),
      // home: const GridScreen(),
      // home: const ResponsiveUIScreen(),
      initialRoute: '/',
      routes: Routes().routes,
    );
  }
}

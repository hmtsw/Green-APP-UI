import 'package:flutter/material.dart';
import 'package:green_app/config.dart';
import 'package:green_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Green APP',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          primary: kPrimaryColor, //顶部栏栏颜色
          // primaryVariant: Colors.white,
          secondary: Colors.green,
          background: Colors.white,
          error: Colors.red,
          brightness: Brightness.light,
          onBackground: Colors.white,
          // secondaryVariant: Colors.white,
          onError: Colors.yellow,
          onPrimary: Colors.white, //顶部栏字体颜色
          onSecondary: Colors.grey,
          onSurface: Colors.grey,
          surface: Colors.grey,
        ),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      home: const HomeScreen(),
    );
  }
}

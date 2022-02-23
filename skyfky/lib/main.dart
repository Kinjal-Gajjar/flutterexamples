import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skyfky/pages/choose_page.dart';
import 'package:skyfky/pages/splsh_screen.dart';
// import 'package:skyfky/pages/splsh_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        'second': (context) => ChoosePage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        tabBarTheme: TabBarTheme(
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.white,
          indicator: BoxDecoration(
            color: Colors.red[100],
            borderRadius: BorderRadius.circular(30),
          ),
          indicatorSize: TabBarIndicatorSize.tab,
        ),
      ),
    );
  }
}

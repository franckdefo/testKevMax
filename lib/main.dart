import 'package:clonewhatsapp/pages/Homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: Color(0xFF075E55)),
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0))
      ),
      routes: {
        "/" : (context) => Homepage()
      },
    );
  }
}


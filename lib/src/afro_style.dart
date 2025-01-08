import 'package:afro_style/src/home/home.dart';
import 'package:flutter/material.dart';

class AfroStyle extends StatelessWidget {
  const AfroStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0xff008CFF),
          onPrimary: Color(0xffffffff),
          primaryContainer: Color(0xff010203),
          onPrimaryContainer: Color(0xffffffff),
          secondaryContainer: Color(0xff0D0D0D),
          onSecondaryContainer: Color(0xffffffff),
        ),
      ),
      home: const Home(),
    );
  }
}

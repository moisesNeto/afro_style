import 'package:afro_style/src/home/home_screen.dart';
import 'package:afro_style/src/menu/menu_afro_style.dart';
import 'package:afro_style/src/menu/tab_config.dart';
import 'package:afro_style/src/menu/tab_provider.dart';
import 'package:flutter/material.dart';

class AfroStyle extends StatelessWidget {
  AfroStyle({super.key});
  final List<TabConfig> tabs = TabProvider(tabs: []).getTabs();
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
      home: HomeScreen(tabs: MenuAfroStyle().getTabProvider()),
    );
  }
}

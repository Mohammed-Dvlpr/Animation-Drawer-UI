import 'package:animation_drawer_ui/drawer/meal_page.dart';
import 'package:animation_drawer_ui/drawer/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[400],
      body: ZoomDrawer(
          angle: 0.0, menuScreen: MenuPage(), mainScreen: MealPage()),
    );
  }
}

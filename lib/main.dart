import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main{
  runApp(const ContactApp());
}

class ContactApp extends StatefulWidget {
  const ContactApp({super.key});

  @override
  State<ContactApp> createState() => _ContactAppState();
}

class _ContactAppState extends State<ContactApp> {
  ThemeMode _themeMode = ThemeMode.light;

  @override
  void initState() {
    super.initState();
    _loadsThemeModoe();
  }




  void _loadsThemeModoe() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
  }




  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
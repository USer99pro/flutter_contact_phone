import 'package:contactphone/my_contact_list.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
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

  void _loadsThemeModoe() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      _themeMode = (prefs.getBool('isDarkMode') ?? false)
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  void _toggleTheme(bool isDarkMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    });
    await prefs.setBool('isDarkMode', isDarkMode);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'สมุดโทรศํพท์',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: MyContactList(
        onToggleTheme: _toggleTheme ,
        isdarkMode:  _themeMode == ThemeMode.dark,
      ) ,
    );
  }
}

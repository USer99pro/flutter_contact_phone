import 'package:flutter/material.dart';

class MyContactList extends StatefulWidget {
  final Function(bool) onToggleTheme;
  final bool isdarkMode;

  const MyContactList({
    Key? key,
    required this.onToggleTheme,
    required this.isdarkMode,
  }) : super(key: key);

  @override
  State<MyContactList> createState() => _MyContactListState();
}

class _MyContactListState extends State<MyContactList> {
  late List<contact> contactData;
  

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

import 'package:contactphone/contact.dart';
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
  void initState() {
    super.initState();
    contactData = [
      contact('รัชชานนท์', '0610541331','0.jpg'),
      contact('อ้น', '0660311833','1.jpg'),
      contact('สเเตมป์', '0963490964','2.jpg'),
      contact('อาร์ม', '0618096515','3.jpg'),
      contact('นิติพัฒน์', '0610541331','4.jpg'),
    ];


  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('รายชื่อผู้ติดต่อ'),
        ),
        actions: [
          Switch(value: widget.isdarkMode, onChanged: widget.onToggleTheme),

        ],
      ),
      body: Column(
        children: [
         Padding(padding:const EdgeInsets.all(0.8 ),
              child: TextField(
                // controller: searchController,
                decoration: InputDecoration(
                labelText:"ค้นหารายชื่อ",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              )
            ),
          )
        
      ],
      ),
    );
  }
}

import 'package:contactphone/contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactListWidget extends StatelessWidget {
  const ContactListWidget({
    Key? key,
    required this.onCall,
    required this.contacts,
    required this.onChat,
  }) : super(key: key);

  final List<contact> contacts;
  final Function(String) onCall;
  final Function(String, {bool isVideoCall}) onChat;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (BuildContext context, index) {
          contact data = contacts[index];
          return Card(
            child: ListTile(
                leading: Image.asset("assets/img_profile/${data.pic}"),
                title: Text(data.name),
                subtitle: Text(data.phonenumber),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        icon: const Icon(
                          Icons.phone,
                          color: Colors.green,
                          size: 30,
                        ),
                        onPressed: () {
                          onCall(data.phonenumber);
                        }),
                        IconButton(
                        icon: const Icon(
                          Icons.chat,
                          color: Color.fromARGB(255, 23, 17, 185),
                          size: 30,
                        ),
                        onPressed: () {
                          onChat(data.phonenumber);
                        }),
                        IconButton(
                        icon: const Icon(
                          Icons.video_call,
                          color: Color.fromARGB(255, 206, 63, 7),
                          size: 30,
                        ),
                        onPressed: () =>{
                              onChat(data.phonenumber, isVideoCall: true)
                        }),
                  ],
                )),
          );
        });
  }
}

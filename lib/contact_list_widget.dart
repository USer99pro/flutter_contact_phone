import 'package:contactphone/contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactListWidget extends StatelessWidget {
  const ContactListWidget({
    Key? key,
    required this.onCall,
    required this.contacts,
  }) : super(key: key);

  final List<contact> contacts;
  final Function(String) onCall;

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
              //  textColor: Color.fromRGBO(255, 150, 150, opacity),
              subtitle: Text(data.phonenumber),
              trailing: IconButton(
                  icon: const Icon(
                    Icons.phone,
                    color: Colors.green,
                    size: 30,
                  ),

                  onPressed: () {
                    onCall(data.phonenumber);
                  }
                  
                ),

            
              ),
            );
          });
  
  }
}



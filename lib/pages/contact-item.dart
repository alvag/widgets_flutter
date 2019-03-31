import 'package:flutter/material.dart';
import 'package:introduccion_flutter/model/contact.model.dart';

class ContactItem extends StatelessWidget {

    final ContactModel contact;

    ContactItem(this.contact);

    @override
    Widget build(BuildContext context) {
        return ListTile(
            leading: CircleAvatar(
                child: Text(contact.name.substring(0, 1)),
            ),
            title: Text(contact.name),
            subtitle: Text(contact.email),
        );
    }
}

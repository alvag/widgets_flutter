import 'package:flutter/material.dart';
import 'package:introduccion_flutter/model/contact.model.dart';
import 'package:introduccion_flutter/pages/contact-item.dart';

class ContactList extends StatelessWidget {

    final List<ContactModel> contacts;

    ContactList(this.contacts);

    @override
    Widget build(BuildContext context) {
        return ListView(
            children: buildContactList(),
        );
    }

    List<ContactItem> buildContactList() {
        return contacts.map((contact) => ContactItem(contact)).toList();
    }
}

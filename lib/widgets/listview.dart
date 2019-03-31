import 'package:flutter/material.dart';
import 'package:introduccion_flutter/model/contact.model.dart';
import 'package:introduccion_flutter/pages/contact-list.dart';

class MyListView extends StatefulWidget {
    @override
    _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Demo ListView'),
            ),
            body: Contact(),
        );
    }
}

class Contact extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: ContactList(buildList()),
        );
    }

    buildList() {
        return <ContactModel>[
            const ContactModel(
                name: 'Rodrigo Morales', email: 'rmorales@gmail.com'),
            const ContactModel(
                name: 'Contacto 2', email: 'contacto2@gmail.com'),
            const ContactModel(
                name: 'Contacto 3', email: 'contacto3@gmail.com'),
            const ContactModel(
                name: 'Contacto 4', email: 'contacto4@gmail.com'),
            const ContactModel(
                name: 'Contacto 5', email: 'contacto5@gmail.com'),
            const ContactModel(
                name: 'Contacto 6', email: 'contacto6@gmail.com'),
            const ContactModel(
                name: 'Contacto 7', email: 'contacto7@gmail.com'),
            const ContactModel(
                name: 'Contacto 8', email: 'contacto8@gmail.com'),
            const ContactModel(
                name: 'Contacto 9', email: 'contacto9@gmail.com'),
            const ContactModel(
                name: 'Contacto 10', email: 'contacto10@gmail.com'),
            const ContactModel(
                name: 'Contacto 11', email: 'contacto11@gmail.com'),
            const ContactModel(
                name: 'Contacto 12', email: 'contacto12@gmail.com'),
        ];
    }
}

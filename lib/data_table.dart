import 'package:flutter/material.dart';

import 'contact_list.dart';

class ContactDetailsScreen extends StatelessWidget {
  final Contact contact;

  ContactDetailsScreen({required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // the title displayed on the appBar is the appropriate/corresponding name of the contact's name
        // eg, if a user taps on Alice, on the next screen which is this screen,
        // Alice will be displayed as the title of the appBar
        title: Text(contact.name),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(label: Text('Phone')),
            DataColumn(label: Text('Email')),
          ],
          rows: [
            // the info in the rows of the table is the contact's phone number and email and they have been defined
            // in the list of type Contact Class.
            DataRow(cells: [
              DataCell(Text(contact.phoneNumber)),
              DataCell(Text(contact.email)),
            ]),
          ],
        ),
      ),
    );
  }
}

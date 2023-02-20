import 'package:data_views_app/contact_list.dart';
import 'package:flutter/material.dart';

import 'data_table.dart';

// this screen displays the contacts in grid view

class GridContactListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          // this is a gesture detector that detects a tap
          return GestureDetector(
            // the class Contact that contains a list of contacts of type Contact will be used in this piecce of code
            /*the builder function creates and returns a new instance of ContactDetailsScreen
            with the contact property set to the Contact object at the specified index in a contacts list.
            This means that when the user taps the widget associated with this code, it will navigate to a new screen that shows the details of the corresponding contact.*/
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContactDetailsScreen(contact: contacts[index]),
                ),
              );
            },
            /*The Column widget arranges its children vertically and takes a mainAxisAlignment property to specify how the children should be positioned. In this case,
            MainAxisAlignment.center is used to center the children within the column.*/
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  SizedBox(height: 8),
                  //A Text widget that displays the name of the contact. The name is retrieved from the contacts list using the index index.
                  Text(contacts[index].name),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


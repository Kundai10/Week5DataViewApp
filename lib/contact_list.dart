// this class contains the list of all the contacts as list of type Contact Class
class Contact {
  final String name;
  final String phoneNumber;
  final String email;

  Contact({required this.name, required this.phoneNumber, required this.email});
}

final List<Contact> contacts = [
  Contact(
      name: "Alice",
      phoneNumber: "555-1234",
      email: "alice@gmail.com"),
  Contact(
      name: "Alex",
      phoneNumber: "555-5678",
      email: "alex@gmail.com"),
  Contact(
      name: "Hannah",
      phoneNumber: "555-9012",
      email: "hannah@gmail.com"),
  Contact(
      name: "Mike",
      phoneNumber: "555-3456",
      email: "mike@gmail.com"),
];

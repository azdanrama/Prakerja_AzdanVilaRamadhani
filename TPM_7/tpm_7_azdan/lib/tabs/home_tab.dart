import 'package:flutter/material.dart';
import 'package:tpm_7_azdan/models/contact.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  final contactList = [
    Contact(
      name: "Leanne Graham",
      phoneNumber:"1-770-736-8031 x56442",
      initial:"L"
    ),
    Contact(
      name: "Ervin Howell",
      phoneNumber:"010-692-6593 x09125",
      initial:"E"
    ),
    Contact(
      name: "Clementine Bauch",
      phoneNumber:"1-463-123-4447",
      initial:"C"
    ),
    Contact(
      name: "Patricia Lebsack",
      phoneNumber:"493-170-9623 x156",
      initial:"P"
    ),
    Contact(
      name: "Chelsey Dietrich",
      phoneNumber:"(254)954-1289",
      initial:"C"
    ),
    Contact(
      name: "Mrs. Dennis Schulist",
      phoneNumber:"1-477-935-8478 x6430",
      initial:"M"
    ),
    Contact(
      name: "Kurtis Weissnat",
      phoneNumber:"210.067.6132",
      initial:"K"
    ),
    Contact(
      name: "Bella Hadid",
      phoneNumber:"325-599-9680 x357",
      initial:"B"
    ),
    Contact(
      name: "Oscar Isaac",
      phoneNumber:"1-724-535-8594 x70542",
      initial:"O"
    ),
    Contact(
      name: "Pedro Pascal",
      phoneNumber:"424.536.6064",
      initial:"P"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      itemCount: contactList.length,
      itemBuilder: (contact, index) => ListTile(
        leading: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(100)
          ),
          child: Center(
            child: Text(
              contactList[index].initial,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        title: Text(contactList[index].name),
        subtitle: Text(contactList[index].phoneNumber),
      )
    );
  }
}
// ignore_for_file: prefer_const_constructors

import 'package:contactapp/contact_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contact app',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myContacts = listOfContacts;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "My Contacts",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/woman.jpg"),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: myContacts.length,
          itemBuilder: (BuildContext context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (index == 0)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Enter number/name to search",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))),
                  ),
                if (index == 0)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Recents", style: TextStyle(fontSize: 25)),
                  ),
                if (index == 2)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Contacts",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactPage(
                                  mycontact: myContacts[index],
                                )));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(myContacts[index]["image"]),
                    ),
                    title: Text(
                      myContacts[index]["name"],
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(myContacts[index]["phone"]),
                    trailing: Icon(Icons.more_horiz),
                  ),
                ),
                const Divider(
                  height: 4,
                  color: Colors.grey,
                ),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          size: 50,
        ),
      ),
    );
  }
}

List listOfContacts = [
  {
    "name": "Maryam Uthman",
    "location": "Bangtara",
    "email": "maryam@gmail.com",
    "phone": "0579387456",
    "group": "Family",
    "image": "https://picsum.photos/200/300?random=40"
  },
  {
    "name": "Zainab Uthman",
    "location": "Bamaahuu",
    "email": "zainab@gmail.com",
    "phone": "0547389034",
    "group": "A4 group",
    "image": "https://picsum.photos/200/300?random=30"
  },
  {
    "name": "Fatima",
    "location": "USA",
    "email": "fatima@gmail.com",
    "phone": "0265894572",
    "group": "GMSA UCC",
    "image": "https://picsum.photos/200/300?random=50"
  },
  {
    "name": "Firdaus",
    "location": "SAUDI",
    "email": "firdaus@gmail.com",
    "phone": "0598356721",
    "group": "ECO 104",
    "image": "https://picsum.photos/200/300?random=55"
  },
  {
    "name": "Rashida",
    "location": "Niger",
    "email": "rashida@gmail.com",
    "phone": "0508936745",
    "group": "LAR 104",
    "image": "https://picsum.photos/200/300?random=11"
  },
  {
    "name": "Abu Bakr Uthman",
    "location": "Danku",
    "email": "abu bakr@gmail.com",
    "phone": "0248754309",
    "group": "CAMSA Freshers",
    "image": "https://picsum.photos/200/300?random=67"
  },
  {
    "name": "Khaajar",
    "location": "Fonsi",
    "email": "khaajar@gmail.com",
    "phone": "0549817707",
    "group": "The family of Uthman",
    "image": "https://picsum.photos/200/300?random=60"
  },
  {
    "name": "Khadiijah",
    "location": "Wa",
    "email": "khadiijah@gmail.com",
    "phone": "0505073263",
    "group": "YTH group",
    "image": "https://picsum.photos/200/300?random=12"
  },
  {
    "name": "My sweet Mummy",
    "location": "Niamey",
    "email": "mylife@gmail.com",
    "phone": "0247388348",
    "group": "Jihaad group",
    "image": "https://picsum.photos/200/300?random=21"
  },
  {
    "name": "Prince Ali",
    "location": "Gariel",
    "email": "alioosamn2002@gmail.com",
    "phone": "0241083770",
    "group": "Family",
    "image": "https://picsum.photos/200/300?random=39"
  },
];

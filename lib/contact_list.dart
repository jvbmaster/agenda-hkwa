import 'dart:async';

import 'package:agenda/contact_form.dart';
import 'package:agenda/script.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  final lista = [
    {
      'nome': 'Pietro',
      'telefone': '(11) 9 8187-7356',
      'avatar':
          'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png'
    },
    {
      'nome': 'Mike',
      'telefone': '(11) 9 9887-7256',
      'avatar':
          'https://cdn.pixabay.com/photo/2018/08/28/13/29/avatar-3637561_960_720.png'
    },
    {
      'nome': 'Hortência',
      'telefone': '(11) 9 9987-7686',
      'avatar':
          'https://cdn.pixabay.com/photo/2021/03/02/08/51/woman-6061865_960_720.jpg'
    }
  ];

  Future<List<Map<String, dynamic>>> _buscar() async {
    String path = join(await getDatabasesPath(), 'banco');
    Database db = await openDatabase(path, version: 3, onCreate: (db, v) {
      db.execute(createTable);
      db.execute(insert);
    });
    return db.query('contact');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lista de Contatos"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("contact-form");
                },
                icon: Icon(Icons.add)),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('teste');
                },
                icon: Icon(Icons.add_alarm))
          ],
        ),
        body: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, i) {
            var contato = lista[i];

            return ListTile(
              title: Text(contato['nome']!),
              subtitle: Text(contato['telefone']!),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(contato['avatar']!),
              ),
              trailing: Container(
                width: 100,
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.delete))
                  ],
                ),
              ),
            );
          },
        ));
  }
}

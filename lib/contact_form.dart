import 'package:agenda/teste.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Contatos"),
      ),
    );
  }
}

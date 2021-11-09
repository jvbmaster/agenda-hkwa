import 'package:agenda/contact_form.dart';
import 'package:agenda/contact_list.dart';
import 'package:agenda/teste.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const HOME = "/";
  static const FORM = "contact-form";
  static const TEST = "teste";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        /// remover banner
        debugShowCheckedModeBanner: false,

        ///
        theme: ThemeData(primarySwatch: Colors.amber),
        routes: {
          HOME: (context) => ContactList(),
          FORM: (context) => ContactForm(),
          TEST: (context) => Teste()
        });
  }
}

import 'package:flutter/material.dart';
import 'package:onepiece_list/src/widgets/header_widget.dart';
import 'package:onepiece_list/src/widgets/lista_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 16, 16),
      body: Column(children: <Widget>[Headerwidget(), ListaPersonajes()]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

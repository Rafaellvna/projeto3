import 'package:flutter/material.dart';
import './Screens/Login.dart';
import './Screens/Lista.dart';
import './Screens/Cadastro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sorvetes',
      routes: {
        '/': (context) => Login(),
        '/lista': (context) => Lista(),
        '/cadastro': (context) => Cadastro(),
      },
    );
  }
}

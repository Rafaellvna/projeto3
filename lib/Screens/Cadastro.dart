import 'package:flutter/material.dart';

export 'Cadastro.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pushReplacementNamed(context, '/lista'),
            ),
            title: Text('Novo Sabor de sorvete'),
            backgroundColor: Colors.green,
            actions: [
              TextButton(
                child: Text('Salvar', style: TextStyle(color: Colors.white)),
                onPressed: () => Navigator.pushNamed(context, '/lista'),
              ),
            ]),
        body: Column(children: [
          TextField(keyboardType: TextInputType.name, decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Sabor'))),
          TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Valor')),
          ),
        ]));
  }
}

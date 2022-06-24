import 'package:flutter/material.dart';

export 'Lista.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Lista de Sorvetes'), backgroundColor: Colors.green, actions: [
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () => Navigator.pushReplacementNamed(context, '/')),
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.add),
          onPressed: () => Navigator.pushNamed(context, '/cadastro'),
        ),
        body: ListView.builder(
            itemCount: 4,
            itemBuilder: (ctx, index) {
              return ListTile(title: Text("Sabor ${index + 1}"), trailing: Text('Valor: R\$ 30'));
            }));
  }
}

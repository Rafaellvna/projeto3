import 'package:flutter/material.dart';

export 'Login.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.icecream, size: 72, color: Colors.green),
          Text(
            'Escolha o Seu Sorvete',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                label: Text('Email'),
              )),
          TextField(
            decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Senha')),
            obscureText: true,
          ),
          Padding(
              padding: EdgeInsets.only(top: 24),
              child: ElevatedButton(
                child: Text('Entrar'),
                onPressed: () => Navigator.pushReplacementNamed(context, '/lista'),
              )),
        ],
      ),
    );
  }
}

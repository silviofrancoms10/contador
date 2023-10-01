import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void decrement() {
    print('Decrement');
  }

  void increment() {
    print("Increment");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Widget andaime (modelo para você criar a sua página)
      backgroundColor: Colors.black,
      appBar: AppBar(  //BARRA
        title: Text("Assistido!"),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(),  //MENU
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //Alinhamento do eixo principal

        children: [
          Text('Pode entrar!',
              style: TextStyle(
                fontSize: 34,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
              )),
          Text(
            '0',
            style: TextStyle(
              fontSize: 100,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                child: Text(
                  "Saiu",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              TextButton(
                onPressed: increment,
                child: Text(
                  "Entrou",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

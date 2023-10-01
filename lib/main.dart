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
    print('Increment');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Widget andaime (modelo para você criar a sua página)
      backgroundColor: Colors.black,
      appBar: AppBar(
        //BARRA
        title: Text("Assistido!"),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(), //MENU
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
          //const SizedBox(height: 100),
          const Padding(
            padding: EdgeInsets.all(180),
            child: Text(
              '0',
              style: TextStyle(
                fontSize: 100,
                color: Colors.white,
              ),
            ),
          ),
          //const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    //padding: const EdgeInsets.all(32),
                    fixedSize: const Size(100, 100),
                    primary: Colors.red,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.green, width: 5),
                        borderRadius: BorderRadius.circular(24))),
                child: Text(
                  "Saiu",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(width: 32),
              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    // padding: const EdgeInsets.all(32),
                    fixedSize: const Size(100, 100),
                    primary: Colors.red,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.green, width: 5),
                        borderRadius: BorderRadius.circular(24))),
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

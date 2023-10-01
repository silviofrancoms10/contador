import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remover a faixa de debug no app
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  int count = 0;
  void decrement() {
    count--;
    print(count);
  }

  void increment() {
    count++;
    print(count);
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
      drawer: Drawer(),
      //MENU
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/backgroundapp.jpg'),
              fit: BoxFit.cover,
              // image: NetworkImage('https://img.freepik.com/fotos-gratis/uma-imagem-de-um-planeta-com-um-buraco-negro-no-centro-e-um-buraco-negro-no-centro_1340-23795.jpg?w=1380&t=st=1696166756~exp=1696167356~hmac=60ff9fb392ff9f9da1d6c1debd02bf3ccf9135e4778c924df5841f645aba094a'),
                ),
        ),
        child: Column(
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
      ),
    );
  }
}

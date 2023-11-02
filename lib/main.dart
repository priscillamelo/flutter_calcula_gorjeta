import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink.shade50,
        appBar: AppBar(
          title: Text('Calcula Gorjeta'),
          backgroundColor: Colors.pink.shade400,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(),
            Text(
              'R\$0,00',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.pink.shade200,
                  labelText: "Digite o total:",
                  icon: Icon(Icons.money_off),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
            ElevatedButton(
                onPressed: () {
                  debugPrint("entrou");
                },
                child: Text("Calcular",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.pink.shade200),
                )),
          ],
        ),
      ),
    );
  }
}

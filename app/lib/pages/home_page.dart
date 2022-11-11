import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Resultado: ',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('Primeiro valor'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('Segundo valor'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Soma'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Subtração'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Multplicação'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Divisão'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

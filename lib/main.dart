import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int conteo = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hola"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de clicks:', style: TextStyle(fontSize: 20)),
              Text('$conteo', style: TextStyle(fontSize: 30)),
            ],
          ),
        ),
        floatingActionButton: crear_botones(),
      ),
    );
  }

  Widget crear_botones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: [
            SizedBox(width: 30),
            FloatingActionButton(
              onPressed: resetear,
              child: Icon(Icons.exposure_zero),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 8),
            FloatingActionButton(
              onPressed: restar,
              child: Icon(Icons.remove),
            ),
            SizedBox(width: 8),
            FloatingActionButton(
              onPressed: agregar,
              child: Icon(Icons.add),
            ),
            SizedBox(width: 8),
          ],
        ),
      ],
    );
  }

  void agregar() {
    setState(() {
      conteo = conteo + 1;
    });
  }

  void restar() {
    setState(() {
      conteo = conteo - 1;
    });
  }

  void resetear() {
    setState(() {
      conteo = 0;
    });
  }
}

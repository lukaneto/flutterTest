import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Incrementa flutter',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  _HomePageState createState() =>
      _HomePageState(); //método cresteState do tipo _HomePageState que inicia o método construtor _HomePageState().
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nosso App'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Vezes que o botão foi apertado',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.brown,
        child: Container(
          height: 100,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.add_box, color: Colors.white),
                    onPressed: () {
                      alert('Adicionei qualquer coisa');
                    }),
                IconButton(
                    icon: Icon(
                      Icons.add_a_photo,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      alert('Adicionei uma foto');
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void alert(String message) {
  print(message);
}

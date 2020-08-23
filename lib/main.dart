import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'MeuApp Flutter',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
    _HomePage createState()=> _HomePage();
}

class _HomePage extends State<MyHomePage>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Amigoss'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              ItemCounter('Corinthians'),
            ],
          ),
        ),
    );
  }
}

class ItemCounter extends StatefulWidget{
  final String name;
  ItemCounter(this.name);
  @override
  _ItemCounterState createState()=> _ItemCounterState(); 
}

class _ItemCounterState extends State<ItemCounter>{
  int count = 0;
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap:(){
        setState((){
          count++;
        });
      },
      child: Text('${widget.name}:$count',style: TextStyle(fontSize: 30),)
    );
  }
}
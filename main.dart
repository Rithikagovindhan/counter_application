import 'package:flutter/material.dart';

void main() => runApp(CounterApplication());

class CounterApplication extends StatelessWidget{


  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Flutter Counter Application',
      home: CounterScreenState(),
    ); //MaterialApp
  }
}
class CounterScreenState extends StatefulWidget{
  @override
  CounterScreen createState() => CounterScreen();
}

class CounterScreen extends State<CounterScreenState>{

  int _count = 0;

  void _incrementCount() {
    setState(()
    {
      _count++;
    });
  }

  void _decrementCount() {
    setState((){
      _count--;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text('Counter Screen'),),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: _incrementCount,
              ), //FloatingActionButton
              Text("${_count}"),
              FloatingActionButton(
                child: Icon(Icons.remove),
                onPressed: _decrementCount,
              ) //FloatingActionButton
            ],
          ),//Row
        ) //Center
    ); //scaffold
  }
}


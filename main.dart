import 'package:flutter/material.dart';
void main(){ runApp(const App()); }
class App extends StatelessWidget{
  const App({super.key});
  @override Widget build(BuildContext c){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('CheqWorld')),
        body: ListView(children: const [
          ListTile(title: Text('Know before you go')),
          ListTile(title: Text('Weather & Floods')),
          ListTile(title: Text('Protests & Rallies')),
          ListTile(title: Text('Crime & Safety')),
        ]),
      ),
    );
  }
}

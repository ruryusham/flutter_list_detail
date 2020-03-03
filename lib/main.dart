import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Home'),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: (){
            Navigator.of(context).pushNamed('/check');
          }
        ),
      )
    );
  }
}

class Check extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: const Text('Check'),
        ),
        body: new Center(
          child: new RaisedButton(
              onPressed: (){
                Navigator.of(context).pushNamed('/finish');
              }
          ),
        )
    );
  }
}

class Finish extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: const Text('Finish'),
        ),
        body: new Center(
          child: new RaisedButton(
              onPressed: (){
                Navigator.popUntil(context,ModalRoute.withName('/'));
              }
          ),
        )
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation with Routes',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => new Home(),
        '/check': (_) => new Check(),
        '/finish': (_) => new Finish(),
      },
    );
  }
}


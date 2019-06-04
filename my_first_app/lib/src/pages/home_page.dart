
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final estiloText = new TextStyle(fontSize: 25);

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de Clicks', style: estiloText),
            Text('0', style: estiloText),

          ]
        ) 
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola mundo');
        },
      ),
    );
  }
}
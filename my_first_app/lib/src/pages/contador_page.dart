import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget{

  @override
  createState() => _ContadorPageState();
  

}

class _ContadorPageState extends State<ContadorPage>{

  final _estiloText = new TextStyle(fontSize: 25);

  int _contador = 0;

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de Clicks', style: _estiloText),
            Text('$_contador', style: _estiloText),

          ]
        ) 
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: _crearBotones(),
      
    );
  }

  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: () {
            setState(() {
              _contador = 0;
            });
          },
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () {
            setState(() {
              if (_contador > 0)
                _contador--;
            });
          },
        ),
        SizedBox(width: 5.0,),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _contador++;
            });
          },
        ),
        
      ],
    );
  }
}
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  // const HomePageTemp({Key key}) : super(key: key);

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: ListView(
        children: _crearItems(),
      ),
    );
  }

  List<Widget> _crearItems(){
    // List<Widget> lista = new List<Widget>();

    // for (var opt in opciones) {
    //   final tempW = ListTile(
    //     title: Text(opt),
    //   );

    //   lista..add(tempW)
    //         ..add(Divider());
    // }

    // return lista;

    return opciones.map((e){
      return Column(
        children: <Widget>[
          ListTile(
             title: Text(e),
             subtitle: Text('Algo'),
             leading: Icon(Icons.accessibility_new),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: (){},
           ),
           Divider()
        ],
      );
    }).toList();

  }
}
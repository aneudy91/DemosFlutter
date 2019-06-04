import 'package:componentes/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
          );
        }
      
  Widget _lista() {

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
          return ListView(
            children: _listaItems(snapshot.data),
          );
      },
    );
    // print(menuProvider.opciones);

    // return ListView(
    //   children: _listaItems(),
    // );
  }

  List<Widget> _listaItems(List<dynamic> data) {
    final lista = List<Widget>();
    data.forEach((d){
      final tmpW = ListTile(
        title: Text(d['texto']),
        trailing: Icon(Icons.arrow_right, color: Colors.blue,),
        leading: Icon(Icons.keyboard_capslock, color: Colors.blue,),
        onTap: (){},
      );

      lista..add(tmpW)
          ..add(Divider());
    });

    return lista;
  }
}
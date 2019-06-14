import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:componentes/src/pages/alert_page.dart';

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
            children: _listaItems(snapshot.data ,context),
          );
      },
    );
    // print(menuProvider.opciones);

    // return ListView(
    //   children: _listaItems(),
    // );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final lista = List<Widget>();
    data.forEach((d){
      final tmpW = ListTile(
        title: Text(d['texto']),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue,),
        leading: getIcon(d['icon']),
        onTap: (){

          Navigator.pushNamed(context, d['ruta']);
          // final route = MaterialPageRoute(
          //   builder: (context) => AlertPage()
            
          // );
          // Navigator.push(context, route);

        },
      );

      lista..add(tmpW)
          ..add(Divider());
    });

    return lista;
  }
}
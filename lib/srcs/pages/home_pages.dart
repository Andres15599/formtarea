import 'package:flutter/material.dart';
import 'package:otra/srcs/pages/mapa_page.dart';
import 'package:otra/srcs/providers/menu_providers.dart';
import 'package:otra/srcs/utils/icono_string_utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('prueba de listView leandro gachuzo'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // menuProvider.cargarDatos().then((opciones) {});
    // print(" el Texto ${menuProvider.opciones}");
    //   return ListView(
    //    children: _listaItems(),
    //  );
    return FutureBuilder(
      future: menuProvider.cargarDatos(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        //print(snapshot.data[0]);
        return ListView(children: _listaItems(context, snapshot.data));
      },
    );
  }

  List<Widget> _listaItems(BuildContext context, List<dynamic> data) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        leading: obtenerIcono(opt['icono']),
        title: Text(opt['texto']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta'], arguments: opt['ruta']);

          /*
          final route = MaterialPageRoute(builder: (context) {
            return MapaPage();
          });
          Navigator.push(context, route);
          */
        },
      );
      opciones.add(widgetTemp);
      opciones.add(Divider(
        color: Colors.cyanAccent,
      ));
    });
    return opciones;
    /*  return [
      ListTile(
        leading: Icon(Icons.map, size: 35),
        title: Text(
          'lugares favoritos',
          style: TextStyle(fontSize: 20),
        ),
        trailing: Icon(Icons.keyboard_arrow_right, size: 35),
        onTap: () {},
      ),
      Divider(
        color: Colors.purple,
      ),
      ListTile(
        leading: Icon(Icons.account_balance_wallet, size: 35),
        title: Text(
          'Billetera',
          style: TextStyle(fontSize: 20),
        ),
        trailing: Icon(Icons.keyboard_arrow_right, size: 35),
        onTap: () {},
      ),
      Divider(
        color: Colors.purple,
      ),
      ListTile(
        leading: Icon(Icons.photo_album, size: 35),
        title: Text(
          'galeria de fotos',
          style: TextStyle(fontSize: 20),
        ),
        trailing: Icon(Icons.keyboard_arrow_right, size: 35),
        onTap: () {},
      ),
      Divider(
        color: Colors.purple,
      ),
      ListTile(
        leading: Icon(Icons.audiotrack, size: 35),
        title: Text(
          'podcast',
          style: TextStyle(fontSize: 20),
        ),
        trailing: Icon(Icons.keyboard_arrow_right, size: 35),
        onTap: () {},
      ),
      Divider(
        color: Colors.purple,
      ),
      ListTile(
        leading: Icon(Icons.add_location, size: 35),
        title: Text(
          'lugares por visitar',
          style: TextStyle(fontSize: 20),
        ),
        trailing: Icon(Icons.keyboard_arrow_right, size: 35),
        onTap: () {},
      ),
      Divider(
        color: Colors.purple,
      ),
    ];
    */
  }
}

import 'package:flutter/material.dart';

class MapaPage extends StatelessWidget {
  const MapaPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final textoRuta = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('pagina mapa'),
        ),
        body: Center(
          child: Text('Esta es la pagina de $textoRuta'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:otra/srcs/pages/formulario_page.dart';

class SecondFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Argumentos parametros = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('pagina formulario'),
        ),
        body: Center(
          child: Text(
              '${parametros.nombre}, ${parametros.apellido} Edad: ${parametros.edad}'),
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

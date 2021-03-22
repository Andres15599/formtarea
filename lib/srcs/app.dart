import 'package:flutter/material.dart';

//import 'package:flutter/rendering.dart';

import 'package:otra/srcs/routes/routes.dart';

class MyApp extends StatelessWidget {
  // final nombres = ['ddd', 'ss', 'miguel', 'juan', 'pedro'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App de imagenes',
      theme: ThemeData(primaryColor: Colors.black),
      initialRoute: '/',
      routes: obtenerRutas(),
      //home: HomePage(),
    );
  }
}

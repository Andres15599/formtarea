import 'package:flutter/material.dart';
import 'package:otra/srcs/pages/billetera_page.dart';
import 'package:otra/srcs/pages/botones_page.dart';
import 'package:otra/srcs/pages/formulario_page.dart';
import 'package:otra/srcs/pages/formulario_page_tarea.dart';
import 'package:otra/srcs/pages/fotos_page.dart';
import 'package:otra/srcs/pages/home_pages.dart';
import 'package:otra/srcs/pages/lugares_page.dart';
import 'package:otra/srcs/pages/mapa_page.dart';
import 'package:otra/srcs/pages/podcast_page.dart';
import 'package:otra/srcs/pages/secondFromPageTarea_page.dart';
import 'package:otra/srcs/pages/secondFromPage_page.dart';

Map<String, WidgetBuilder> obtenerRutas() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => FormPageTarea(),
    'mapa': (BuildContext context) => MapaPage(),
    'billetera': (BuildContext context) => BilleteraPage(),
    'fotos': (BuildContext context) => FotosPage(),
    'podcast': (BuildContext context) => PodcastPage(),
    'lugares': (BuildContext context) => LugaresPage(),
    'formulario_dos': (BuildContext context) => SecondFormPage(),
    'formulario_tarea': (BuildContext context) => SecondFormPageTarea(),
  };
}

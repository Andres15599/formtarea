import 'package:flutter/material.dart';

class FormPageTarea extends StatefulWidget {
  @override
  _FormPageTareaState createState() => _FormPageTareaState();
}

class _FormPageTareaState extends State<FormPageTarea> {
  // TextEditingController nombreTextController;

//  TextEditingController apTextController;
  String nombre;
  String apellido;
  String edad;
  String ciudad;
  String contrasena;
  String sexo;
  String t = 'todos los campos son necesarios x2';

  FocusNode nombrefocus;
  FocusNode apellidoFocus;
  FocusNode edadFocus;
  FocusNode ciudadFocus;
  FocusNode contrasenaFocus;
  FocusNode sexoFocus;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('formulario Andres Rojo'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    'Inicia en Animefvl',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 30,
                    ),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'ejemplo: Juan',
                      labelText: 'nombre',
                      prefixIcon: Icon(Icons.person)),
                  onSaved: (value) {
                    nombre = value;
                  },
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'datos incorrectos o no encontrados en la BD';
                    } else
                      return null;
                  },
                  focusNode: this.nombrefocus,
                  onEditingComplete: () => requestFocus(context, apellidoFocus),
                  textInputAction: TextInputAction.next,
                  // autofocus: true,
                  //  controller: nombreTextController,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'ejemplo: Peréz',
                      labelText: 'apellido',
                      prefixIcon: Icon(Icons.person)),
                  onSaved: (value) {
                    apellido = value;
                  },
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Datos incorrectos  o no encontrados en la BD';
                    } else {
                      return null;
                    }
                  },
                  focusNode: this.apellidoFocus,
                  onEditingComplete: () => requestFocus(context, edadFocus),
                  textInputAction: TextInputAction.next,

                  //autofocus: true,
                  //  controller: apTextController,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'ejemplo: 23',
                      labelText: 'edad',
                      prefixIcon: Icon(Icons.calendar_today)),
                  onSaved: (value) {
                    edad = value;
                  },
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'datos incorrectos';
                    } else
                      return null;
                  },
                  focusNode: this.edadFocus,
                  // autofocus: true,
                  //  controller: nombreTextController,

                  onEditingComplete: () => requestFocus(context, ciudadFocus),
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                      hintText: 'ejemplo: Queretaro',
                      labelText: 'ciudad',
                      prefixIcon: Icon(Icons.account_balance_sharp)),
                  onSaved: (value) {
                    ciudad = value;
                  },
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'datos incorrectos';
                    } else
                      return null;
                  },
                  focusNode: this.ciudadFocus,
                  // autofocus: true,
                  //  controller: nombreTextController,

                  onEditingComplete: () =>
                      requestFocus(context, contrasenaFocus),
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'ejemplo: juan1234',
                      labelText: 'contraseña',
                      prefixIcon: Icon(Icons.content_paste_sharp)),
                  onSaved: (value) {
                    contrasena = value;
                  },
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'datos incorrectos';
                    } else
                      return null;
                  },
                  focusNode: this.contrasenaFocus,
                  // autofocus: true,
                  //  controller: nombreTextController,
                  onEditingComplete: () => requestFocus(context, sexoFocus),
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'ejemplo: Hombre o Mujer',
                      labelText: 'sexo',
                      prefixIcon: Icon(Icons.people_outline_outlined)),
                  onSaved: (value) {
                    sexo = value;
                  },
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'datos incorrectos';
                    } else
                      return null;
                  },
                  focusNode: this.sexoFocus,
                  // autofocus: true,
                  //  controller: nombreTextController,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    'todos los campos son necesarios',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 50,
                  child: RaisedButton(
                    hoverColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        formKey.currentState.save();

                        if (nombre.compareTo('Andres') == 0 &&
                            apellido.compareTo('Rojo') == 0) {
                          Navigator.pushNamed(context, 'formulario_tarea',
                              arguments: Argumentos(
                                  nombre: this.nombre,
                                  apellido: this.apellido,
                                  edad: this.edad,
                                  ciudad: this.ciudad,
                                  contrasena: this.contrasena,
                                  sexo: this.sexo));
                        } else if (nombre.compareTo('') == 0 &&
                            apellido.compareTo('') == 0) {
                          Text('sdasdasdas');
                        }
                      }
                    },
                    color: Colors.purple,
                    textColor: Colors.white,
                    child: Text('Iniciar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void requestFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
  }

  @override
  void initState() {
    super.initState();
    // nombreTextController = TextEditingController();

    // apTextController = TextEditingController();
    nombrefocus = FocusNode();
    apellidoFocus = FocusNode();
    edadFocus = FocusNode();
    ciudadFocus = FocusNode();
    contrasenaFocus = FocusNode();
    sexoFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    //  nombreTextController.dispose();
    //  apTextController.dispose();
    nombrefocus.dispose();
    apellidoFocus.dispose();
    edadFocus.dispose();
    ciudadFocus.dispose();
    contrasenaFocus.dispose();
    sexoFocus.dispose();
  }
}

class Argumentos {
  String nombre;
  String apellido;
  String edad;
  String ciudad;
  String contrasena;
  String sexo;

  Argumentos(
      {this.nombre,
      this.apellido,
      this.edad,
      this.ciudad,
      this.contrasena,
      this.sexo});
}

import 'package:flutter/material.dart';

class BotonesPage extends StatefulWidget {
  BotonesPage({Key key}) : super(key: key);

  @override
  _BotonesPageState createState() => _BotonesPageState();
}

class _BotonesPageState extends State<BotonesPage> {
  String _botones = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tipo de botones Andres'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              width: 250,
              height: 100,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.amber, style: BorderStyle.solid)),
              child: RaisedButton(
                hoverColor: Colors.black,
                onPressed: () {
                  _raised();
                },
                color: Colors.red,
                textColor: Colors.white,
                child: Text('RaisedButton'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 250,
              height: 100,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.amber, style: BorderStyle.solid)),
              child: FlatButton(
                hoverColor: Colors.black,
                onPressed: () {
                  _flat();
                },
                color: Colors.red,
                textColor: Colors.white,
                child: Text('FlatdButton'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 250,
              height: 100,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.amber, style: BorderStyle.solid)),
              child: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  _iconButton();
                },
                color: Colors.red,
                iconSize: 50,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 250,
              height: 100,
              /*
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.amber, style: BorderStyle.solid)),
             */
              child: OutlineButton(
                textColor: Colors.cyan,
                onPressed: () {
                  _outline();
                },
                color: Colors.amberAccent,
                child: Text('outlineButton'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                borderSide: BorderSide(color: Colors.blueAccent),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text('Boton presionado : $_botones '),
            ),
          ],
        ),
      ),
    );
  }

  void _raised() {
    setState(() {
      _botones = 'RaisedButton';
    });
  }

  void _flat() {
    setState(() {
      _botones = 'FlatdButton';
    });
  }

  void _iconButton() {
    setState(() {
      _botones = 'el que tiene icono de la basura';
    });
  }

  void _outline() {
    setState(() {
      _botones = 'OutlineButton';
    });
  }
}

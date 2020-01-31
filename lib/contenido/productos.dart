import 'package:conexionfs/contenido/mandador.dart';
import 'package:flutter/material.dart';

class Producto extends StatefulWidget {
  final String texto;
  Producto(this.texto);
  @override
  _Produc createState() => _Produc();
}

class _Produc extends State<Producto> {
   TextEditingController _texto;
  @override
  void initState() {
    _texto = TextEditingController(text: widget.texto);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.texto),
       // title: Text('Productos'),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(icon: Icon(Icons.add_shopping_cart)
              , onPressed: () {}
          ),
        ],
      ),
      body: Stack(
    children: <Widget>[
      ListaProductos()
        ]
      ),
    );
  }
  }

  class Cocinas extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cocinas'),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(icon: Icon(Icons.add_shopping_cart)
              , onPressed: () {}
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          ListaProductos2()
        ],
      ),
    );
  }

  }
import 'package:flutter/material.dart';

class cardsItems extends StatelessWidget {
  String titulo = 'titulo';
  String subTitulo = 'subtitulo';
  String presio = '0000';
  String direccionUrl =
      'http://www.mueblesaltba.com.mx/img/productos/5c8af607d743d.jpg';
  cardsItems(this.titulo, this.subTitulo, this.presio, this.direccionUrl);

  @override
  Widget build(BuildContext context) {
    final fondo = Container(
      height: 325,
      width: MediaQuery.of(context).size.width * .95,
      margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        shape: BoxShape.rectangle,
      ),
    );

    final imagen = Container(
      width: 200.0,
      height: 250.0,
      margin: EdgeInsets.only(left: 60.0, top: 10.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
            fit: BoxFit.cover, image: NetworkImage(direccionUrl)),
      ),
    );

    final prodTitulo = Container(
      margin: EdgeInsets.only(left: 95.0, top: 250.0),
      child: Text(
        "$titulo",
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ),
      ),
    );

    final prodSubTitulo = Container(
      margin: EdgeInsets.only(left: 95.0, top: 275.0),
      child: Text(
        "$subTitulo",
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black26,
        ),
      ),
    );

    final presioProd = Container(
      margin: EdgeInsets.only(left: 95.0, top: 300.0),
      child: Text(
        "\$$presio",
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.amber,
        ),
      ),
    );

    return Stack(
      children: <Widget>[fondo, imagen, prodTitulo, prodSubTitulo, presioProd],
    );
  }
}

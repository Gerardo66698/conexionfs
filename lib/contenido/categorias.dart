import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:conexionfs/contenido/productos.dart';
import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("CATEGORIAS"),
          backgroundColor: Colors.black,
        ),
        body: StreamBuilder(
            stream: Firestore.instance.collection('categorias').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              List<DocumentSnapshot> docs = snapshot.data.documents;
              return ListView.builder(
                  itemCount: docs.length,
                  itemBuilder: (context, index) {
                    Map<String, dynamic> data = docs[index].data;
                    return Card(
                      child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          title: Text(data['categoria'],
                              style: TextStyle(fontSize: 20.0)),
                          trailing: new Icon(
                            Icons.chevron_right,
                            size: 30.0,
                            color: Colors.black,
                          ),
                          dense: true,
                          onTap: () {
                            if (data.values.contains('Cocinas')) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cocinas()),
                              );
                            }
                            if (data.values.contains('Recamaras')) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Producto('Recamaras')),
                              );
                            }
                          }),
                    );
                  });
            }));
  }
}

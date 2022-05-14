// ignore_for_file: file_names, use_key_in_widget_constructors, sized_box_for_whitespace, must_be_immutable, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

import 'Album.dart';

class CardAlbum extends StatelessWidget {
  Album album; //Variable
  CardAlbum(this.album); //constructor -Recibe el Album

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //InkWell: Detecta cuando demos click sobre el card
      onTap: () {
        //mensaje al hacer click
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text("Título" + album.title)));
      },
      child: Card(
        //Debe cambiarse el child como hijo
        child: Column(
          children: <Widget>[
            Container(
              height: 144.0,
              width: 500.0,
              color: album.color,
              child: Image.asset(album.image, height: 144.0, width: 160.0),
            ),
            //Llamada al método
            padding(Text(album.title, style: TextStyle(fontSize: 18.0))),
            //Row~Fila: Trabaja con children
            Row(
              children: <Widget>[
                padding(Icon(Icons.mic)),
                padding(Text(album.name, style: TextStyle(fontSize: 18.0)))
              ],
            )
          ],
        ),
      ),
    );
  }

  //Método: funcionalidad para no estar creando nuevamente la misma funcionalidad
  Widget padding(Widget widget) {
    return Padding(padding: EdgeInsets.all(7.0), child: widget);
  }
}

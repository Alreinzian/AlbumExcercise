// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:album_app/Album.dart';
import 'package:flutter/material.dart';

import 'CardAlbum.dart';

class ListAlbum extends StatefulWidget {
  @override

//Método que se encarga de escuchar los cambios
  State<StatefulWidget> createState() => ListAlbumState();
}

class ListAlbumState extends State<ListAlbum> {
  List<Album> albums = Album.albumns();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        //Atributos
        shrinkWrap: true, //Permite estirarse en pantalla completa
        itemCount: albums.length, //Muestra el tamaño
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: ObjectKey(albums[index]),
            child: CardAlbum(albums[index]),
            onDismissed: (direction) {
              //método encargado de actualizar la vista
              setState(() {
                albums.removeAt(index);
              });
            },
          );
        });
  }
}

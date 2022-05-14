// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:album_app/ListAlbum.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListAlbum(),
        ],
      ),
    );
  }
}

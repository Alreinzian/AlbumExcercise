// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Album {
  //clase
  //Atributos a usar
  String title;
  String name;
  Color color;
  String image;

//Constuctor
  Album(this.title, this.name, this.image, this.color);

  //Método estático

  static List<Album> albumns() {
    return [
      Album("The bittersweet symphony", "The verve", "assets/img/The verve.jpg",
          Colors.black),
      Album("Riot", "Paramore", "assets/img/paramore.jpg", Colors.yellow),
      Album("Cloks", "Coldplay", "assets/img/coldplay.jpg", Colors.blue),
      Album("Read my mind", "The Killers", "assets/img/the killers.jpg",
          Colors.orange)
    ];
  }
}

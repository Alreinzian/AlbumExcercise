import 'package:flutter/material.dart';

import 'InicioPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rupay app',
      theme: ThemeData(
        fontFamily: "Roboto",
        scaffoldBackgroundColor: Colors.amber, //Color del Scaffold
        textTheme:
            Theme.of(context).textTheme.apply(displayColor: Colors.green),
      ),
      home: InicioPage(),
    );
  }
}

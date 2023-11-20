import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LuckyBallApp(),
    );
  }
}

class LuckyBallApp extends StatefulWidget {
  @override
  _LuckyBallAppState createState() => _LuckyBallAppState();
}

class _LuckyBallAppState extends State<LuckyBallApp> {
  int imagenIndex = 1; // Índice inicial de la imagen
  String carpetaImagenes = 'images'; // Carpeta donde se encuentran las imágenes

  void cambiarImagen() {
    setState(() {
      // Cambiar al siguiente índice de imagen
      imagenIndex = (imagenIndex % 5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: cambiarImagen,
          child: Container(
            padding: EdgeInsets.all(50.0), // Ajusta este valor para cambiar el tamaño del círculo
            decoration: BoxDecoration(
              shape: BoxShape.circle,
               // Cambia el color de fondo a blanco
            ),
            child: Image.asset(
              '$carpetaImagenes/ball$imagenIndex.png',
              height: 400.0, // Ajusta este valor para cambiar el tamaño de la imagen
            ),
          ),
        ),
      ),
    );
  }
}

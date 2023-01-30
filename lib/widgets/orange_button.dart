import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  final String texto;
  final double alto;
  final double ancho;
  final Color color;

  const OrangeButton({super.key, required this.texto, this.alto = 50, this.ancho = 150, this.color = Colors.orange});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ancho,
      height: alto,
      alignment: Alignment.center,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: color),
      child: Text(texto, style: const TextStyle(color: Colors.white)),
    );
  }
}

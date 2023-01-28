import 'package:flutter/material.dart';

class ZapatoSize extends StatelessWidget {
  const ZapatoSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(color: const Color(0xffffcf53), borderRadius: BorderRadius.circular(50)),
        child: Column(
          children: [_ShoeWithShadow()],
        ),
      ),
    );
  }
}

class _ShoeWithShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: [
          Positioned(bottom: 20, right: 0, child: _Shadow()),
          const Image(image: AssetImage("assets/img/azul.png")),
        ],
      ),
    );
  }
}

class _Shadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [BoxShadow(color: Color(0xffeaa14e), blurRadius: 40)],
        ),
      ),
    );
  }
}

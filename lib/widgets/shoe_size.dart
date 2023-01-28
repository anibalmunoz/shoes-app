import 'package:flutter/material.dart';

class ShoeSize extends StatelessWidget {
  const ShoeSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(color: const Color(0xffffcf53), borderRadius: BorderRadius.circular(50)),
        child: Column(
          children: [
            _ShoeWithShadow(),
            _ShoeNumber(),
          ],
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
            boxShadow: const [BoxShadow(color: Color(0xffeaa14e), blurRadius: 40)]),
      ),
    );
  }
}

class _ShoeNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _Number(talla: 7),
          _Number(talla: 7.5),
          _Number(talla: 8),
          _Number(talla: 8.5),
          _Number(talla: 9),
          _Number(talla: 9.5),
        ],
      ),
    );
  }
}

class _Number extends StatelessWidget {
  final double talla;
  const _Number({Key? key, required this.talla}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool selected = false;
    if (talla == 9) selected = true;

    return Container(
      alignment: Alignment.center,
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: selected ? Colors.amber[800]! : Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [if (selected) const BoxShadow(color: Color(0xfff1a23a), offset: Offset(0, 5), blurRadius: 10)],
      ),
      child: Text(
        talla.toString().replaceAll(".0", ""),
        style: TextStyle(color: selected ? Colors.white : const Color(0xfff1a23a), fontWeight: FontWeight.bold),
      ),
    );
  }
}

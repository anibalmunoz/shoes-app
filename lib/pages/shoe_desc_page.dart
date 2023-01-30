import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/helpers/helpers.dart';
import 'package:shoes_app/providers/shoe_provider.dart';
import 'package:shoes_app/widgets/widgets.dart';

class ShoeDescPage extends StatelessWidget {
  const ShoeDescPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    cambiarStatusLight();

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const Hero(tag: "zapato-1", child: ShoeSizePreview(fullScreen: true)),
              Positioned(
                top: 80,
                child: FloatingActionButton(
                  onPressed: () {
                    cambiarStatusDark();
                    Navigator.pop(context);
                  },
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: Colors.transparent,
                  child: const Icon(Icons.chevron_left, color: Colors.white, size: 60),
                ),
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const ShoeDescription(
                    title: 'Nike Air Max 720',
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  _BuyNow(),
                  _ColorsAndMore(),
                  const _LightButtons()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _LightButtons extends StatelessWidget {
  const _LightButtons();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          _BotonSombreado(Icon(Icons.star, color: Colors.red, size: 25)),
          _BotonSombreado(Icon(Icons.add_shopping_cart, color: Colors.red, size: 25)),
          _BotonSombreado(Icon(Icons.settings, color: Colors.red, size: 25)),
        ],
      ),
    );
  }
}

class _BotonSombreado extends StatelessWidget {
  final Icon icon;

  const _BotonSombreado(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: -5, blurRadius: 20, offset: Offset(0, 10))],
      ),
      child: icon,
    );
  }
}

class _ColorsAndMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: const [
                Positioned(left: 90, child: _ColorButton(Color(0xff364d56), 4, "assets/img/negro.png")),
                Positioned(left: 60, child: _ColorButton(Color(0xff2099f1), 3, "assets/img/azul.png")),
                Positioned(left: 30, child: _ColorButton(Color(0xffffad29), 2, "assets/img/amarillo.png")),
                _ColorButton(Color(0xffc6d642), 1, "assets/img/verde.png"),
              ],
            ),
          ),
          const OrangeButton(texto: "More related items", alto: 30, ancho: 150, color: Color(0xffffc675))
        ],
      ),
    );
  }
}

class _ColorButton extends StatelessWidget {
  final Color color;
  final int index;
  final String assetImage;
  const _ColorButton(this.color, this.index, this.assetImage);

  @override
  Widget build(BuildContext context) {
    final shoeProv = Provider.of<ShoeProvider>(context);

    return FadeInLeft(
      delay: Duration(milliseconds: index * 100),
      duration: const Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () => shoeProv.assetImage = assetImage,
        child: Container(width: 35, height: 35, decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
      ),
    );
  }
}

class _BuyNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          const Text("\$180.0", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const Spacer(),
          Bounce(
            delay: const Duration(milliseconds: 600),
            from: 8,
            child: const OrangeButton(texto: "Buy now", ancho: 120, alto: 40),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shoes_app/widgets/widgets.dart';

class AddCartButton extends StatelessWidget {
  final double mount;
  const AddCartButton({super.key, required this.mount});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.1), borderRadius: BorderRadius.circular(100)),
      child: Row(children: [
        const SizedBox(width: 20),
        Text("\$$mount", style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        const Spacer(),
        const OrangeButton(texto: "Add to cart"),
        const SizedBox(width: 20),
      ]),
    );
  }
}

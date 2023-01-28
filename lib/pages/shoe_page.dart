import 'package:flutter/material.dart';
import 'package:shoes_app/widgets/widgets.dart';

class ShoePage extends StatelessWidget {
  const ShoePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppbar(text: "For you"),
          SizedBox(height: 20),
          ZapatoSize(),
        ],
      ),
    );
  }
}

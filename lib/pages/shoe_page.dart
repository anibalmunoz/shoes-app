import 'package:flutter/material.dart';
import 'package:shoes_app/helpers/helpers.dart';
import 'package:shoes_app/widgets/widgets.dart';

class ShoePage extends StatelessWidget {
  const ShoePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    cambiarStatusDark();

    return Scaffold(
      body: Column(
        children: const [
          CustomAppbar(text: "For you"),
          SizedBox(height: 20),
          _Body(),
          AddCartButton(mount: 180),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            Hero(tag: "zapato-1", child: Material(child: ShoeSizePreview(fullScreen: false))),
            ShoeDescription(
              title: 'Nike Air Max 720',
              description:
                  "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}

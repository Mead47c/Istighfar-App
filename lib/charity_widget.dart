import 'package:flutter/material.dart';

class CharityText extends StatelessWidget {
  const CharityText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 20.0, top: 10, left: 20, right: 20),
      child: Text(
        "صدقة جارية عن حمدان الرويلي رحمه الله\nاذكرو جدي بدعوة لعلها تنير قبره",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white38,
          fontSize: 13,
          height: 1.5,
        ),
      ),
    );
  }
}
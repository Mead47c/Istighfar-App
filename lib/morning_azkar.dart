import 'package:flutter/material.dart';
import 'charity_widget.dart';

class MorningAzkar extends StatelessWidget {
  const MorningAzkar({super.key});

  final List<Map<String, dynamic>> azkarList = const [
    {"text": "أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ، وَالْحَمْدُ لِلَّهِ، لاَ إِلَهَ إلاَّ اللهُ وَحْدَهُ لاَ شَرِيكَ لَهُ", "count": 1},
    {"text": "آية الكرسي: اللَّهُ لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ", "count": 1},
    {"text": "اللَّهُمَّ بّكَ أَصْبَحْنَا، وَبِكَ أَمْسَيْنَا، وَبِكَ نَحْيَا، وَبِكَ نَمُوتُ وَإِلَيْكَ النُّشُورُ", "count": 1},
    {"text": "سُبْحَانَ اللهِ وَبِحَمْدِهِ", "count": 100},
    {"text": "أَسْتَغْفِرُ اللهَ وَأَتُوبُ إِلَيْهِ", "count": 100},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B100E),
      appBar: AppBar(
        title: const Text(
          "أذكار الصباح",
          style: TextStyle(color: Color(0xFFD4AF37), fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFFD4AF37)),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 20),
                itemCount: azkarList.length,
                itemBuilder: (context, index) {
                  return AzkarCard(
                    text: azkarList[index]['text'],
                    maxCount: azkarList[index]['count'],
                  );
                },
              ),
            ),

            const CharityText(),
          ],
        ),
      ),
    );
  }
}

class AzkarCard extends StatefulWidget {
  final String text;
  final int maxCount;
  const AzkarCard({super.key, required this.text, required this.maxCount});

  @override
  State<AzkarCard> createState() => _AzkarCardState();
}

class _AzkarCardState extends State<AzkarCard> {
  int currentCount = 0;

  @override
  Widget build(BuildContext context) {
    bool isDone = currentCount >= widget.maxCount;

    return GestureDetector(
      onTap: () {
        if (!isDone) {
          setState(() => currentCount++);
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: isDone ? const Color(0xFFD4AF37).withOpacity(0.08) : const Color(0xFF2C1A17),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isDone ? const Color(0xFFD4AF37) : const Color(0xFFD4AF37).withOpacity(0.2),
            width: isDone ? 1.5 : 0.8,
          ),
        ),
        child: Column(
          children: [
            Text(
              widget.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isDone ? Colors.white38 : Colors.white,
                fontSize: 18,
                height: 1.6,
                decoration: isDone ? TextDecoration.lineThrough : null,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isDone ? const Color(0xFFD4AF37) : Colors.transparent,
                border: Border.all(color: const Color(0xFFD4AF37)),
              ),
              child: Center(
                child: Text(
                  isDone ? "✓" : "${widget.maxCount - currentCount}",
                  style: TextStyle(
                    color: isDone ? Colors.black : const Color(0xFFD4AF37),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
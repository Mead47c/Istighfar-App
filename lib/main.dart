import 'package:flutter/material.dart';
import 'tasbeeh_page.dart';
import 'home_menu.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'AmiriQuran',
    ),
    home: const WelcomePage(),
  ));
}

BoxDecoration goldenDecoration() {
  return const BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xFFB8860B), Color(0xFFFFD700), Color(0xFFFDB931), Color(0xFFB8860B)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B100E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    "أستغفر",
                    style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold, color: Color(0xFFD4AF37)),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "{ فَقُلْتُ اسْتَغْفِرُوا رَبَّكُمْ إِنَّهُ كَانَ غَفَّارًا ۝ يُرْسِلِ السَّمَاءَ عَلَيْكُمْ مِدْرَارًا }",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22, color: Color(0xFFD7CCC8), height: 1.6),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeMenu())
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  height: 60,
                  width: double.infinity,
                  decoration: goldenDecoration(),
                  child: const Center(
                    child: Text(
                      "ابدأ الآن",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF1B100E)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
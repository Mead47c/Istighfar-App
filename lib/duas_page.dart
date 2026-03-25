import 'package:flutter/material.dart';
import 'dart:math';
import 'charity_widget.dart';

class DuasPage extends StatefulWidget {
  const DuasPage({super.key});

  @override
  State<DuasPage> createState() => _DuasPageState();
}

class _DuasPageState extends State<DuasPage> {
  final List<String> duas = [
    "اللهم إنك عفو كريم تحب العفو فاعفُ عني",
    "ربنا آتنا في الدنيا حسنة وفي الآخرة حسنة وقنا عذاب النار",
    "يا حي يا قيوم برحمتك أستغيث، أصلح لي شأني كله",
    "اللهم إني أسألك علماً نافعاً، ورزقاً طيباً، وعملاً متقبلاً",
    "ربِّ اغفر لي ولوالدي وللمؤمنين والمؤمنات",
    "اللهم آتِ نفسي تقواها، وزكِّها أنت خير من زكاها",
    "لا إله إلا أنت سبحانك إني كنت من الظالمين",
    "اللهم مصرف القلوب صرف قلوبنا على طاعتك",
  ];

  late String currentDua;

  @override
  void initState() {
    super.initState();
    currentDua = duas[Random().nextInt(duas.length)];
  }

  void changeDua() {
    setState(() {
      currentDua = duas[Random().nextInt(duas.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B100E),
      appBar: AppBar(
        title: const Text("أدعية مأثورة", style: TextStyle(color: Color(0xFFD4AF37))),
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
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.auto_awesome, color: Color(0xFFD4AF37), size: 40),
                      const SizedBox(height: 30),
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 500),
                        child: Container(
                          key: ValueKey<String>(currentDua),
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            color: const Color(0xFF2C1A17),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.5)),
                          ),
                          child: Text(
                            currentDua,
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      ElevatedButton(
                        onPressed: changeDua,
                        style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFD4AF37)),
                        child: const Text("دعاء آخر", style: TextStyle(color: Color(0xFF1B100E))),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const CharityText(),
          ],
        ),
      ),
    );
  }
}
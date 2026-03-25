import 'package:flutter/material.dart';
import 'charity_widget.dart';

class TasbeehCounter extends StatefulWidget {
  const TasbeehCounter({super.key});
  @override
  State<TasbeehCounter> createState() => _TasbeehCounterState();
}

class _TasbeehCounterState extends State<TasbeehCounter> {
  int count = 0;
  String activeDhikr = "أستغفر الله";


  Widget _buildDhikrOption(String text) {
    return ListTile(
      title: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Color(0xFFD4AF37), fontSize: 20),
      ),
      onTap: () {
        setState(() {
          activeDhikr = text;
          count = 0;
        });
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B100E),
      appBar: AppBar(
          title: const Text(" المسبحة", style: TextStyle(color: Color(0xFFD4AF37))),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Color(0xFFD4AF37))
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(flex: 2),

              Text(
                  "$count",
                  style: const TextStyle(
                      fontSize: 120,
                      color: Color(0xFFD4AF37),
                      fontWeight: FontWeight.w100
                  )
              ),

              const SizedBox(height: 50),

              GestureDetector(
                onTap: () {
                  setState(() {
                    count++;
                  });
                },
                child: Container(
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFFD4AF37),
                      width: 2,
                    ),
                    gradient: const RadialGradient(
                      colors: [Color(0xFFFFD700), Color(0xFFB8860B)],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        activeDhikr,
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: activeDhikr.length > 30 ? 18 : 26,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF1B100E),
                          height: 1.2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              TextButton(
                onPressed: () => setState(() => count = 0),
                child: const Text(
                    "تصفير العداد",
                    style: TextStyle(color: Colors.white38, fontSize: 16)
                ),
              ),
              const SizedBox(height: 20),

              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: const Color(0xFF1B100E),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                    ),
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 20),
                          _buildDhikrOption("أستغفر الله"),
                          _buildDhikrOption("سبحان الله"),
                          _buildDhikrOption("الحمد لله"),
                          _buildDhikrOption("الله أكبر"),
                          _buildDhikrOption("لا إله إلا الله وحده لا شريك له"),
                          _buildDhikrOption("اللهم صلِ وسلم على نبينا محمد"),
                          const SizedBox(height: 20),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 60),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      colors: [Color(0xFFFFD700), Color(0xFFB8860B)],
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "اختر الذكر",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1B100E),
                      ),
                    ),
                  ),
                ),
              ),

              const Spacer(flex: 3),


              const CharityText(),
            ],
          ),
        ),
      ),
    );
  }
}
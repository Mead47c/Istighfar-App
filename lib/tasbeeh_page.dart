import 'package:flutter/material.dart';

class TasbeehCounter extends StatefulWidget {
  const TasbeehCounter({super.key});
  @override
  State<TasbeehCounter> createState() => _TasbeehCounterState();
}

class _TasbeehCounterState extends State<TasbeehCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B100E),
      appBar: AppBar(
          title: const Text("Istighfar", style: TextStyle(color: Color(0xFFD4AF37))),
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
                onTap: () => setState(() => count++),
                child: Container(
                  width: 170, height: 170,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0xFFD4AF37), width: 2),
                    gradient: const RadialGradient(
                        colors: [Color(0xFFFFD700), Color(0xFFB8860B)]
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 20,
                          spreadRadius: 5
                      )
                    ],
                  ),
                  child: const Center(
                      child: Text(
                          "أستغفر الله",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1B100E)
                          )
                      )
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

              const Spacer(flex: 3),


              const Padding(
                padding: EdgeInsets.only(bottom: 20.0, left: 20, right: 20),
                child: Text(
                  "صدقة جارية عن حمدان الرويلي رحمه الله\nاذكرو جدي بدعوة لعلها تنير قبره",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: 13,
                    height: 1.5,
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
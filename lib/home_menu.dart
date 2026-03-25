import 'package:flutter/material.dart';
import 'tasbeeh_page.dart';
import 'morning_azkar.dart';
import 'evening_azkar.dart';
import 'duas_page.dart';
import 'charity_widget.dart'; // تأكدي من وجود هذا السطر ✅

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B100E),
      appBar: AppBar(
        title: const Text(
          'القائمة الرئيسية',
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
      body: Column( // استخدمنا Column هنا لترتيب القائمة مع نص الصدقة بالأسفل
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),

                  menuItem(context, 'المسبحة الرقمية', Icons.fingerprint, () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TasbeehCounter()),
                    );
                  }),

                  menuItem(context, 'أذكار الصباح', Icons.wb_sunny_outlined, () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MorningAzkar()),
                    );
                  }),

                  menuItem(context, 'أذكار المساء', Icons.nights_stay_outlined, () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EveningAzkar()),
                    );
                  }),

                  menuItem(context, 'الأدعية المأثورة', Icons.auto_awesome, () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DuasPage()),
                    );
                  }),
                ],
              ),
            ),
          ),
          // نص الصدقة الجارية يظهر دائماً في أسفل القائمة الرئيسية ✅
          const CharityText(),
        ],
      ),
    );
  }

  Widget menuItem(BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: const Color(0xFF2C1A17),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.5), width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, color: const Color(0xFFD4AF37), size: 30),
            const SizedBox(width: 20),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios, color: Color(0xFFD4AF37), size: 16),
          ],
        ),
      ),
    );
  }
}
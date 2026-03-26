import 'package:flutter/material.dart';

class DeveloperInfoPage extends StatelessWidget {
  const DeveloperInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B100E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B100E),
        elevation: 0,
        title: const Text(
          "عن المطور",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFFD4AF37)),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFFD4AF37), size: 20),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const CircleAvatar(
                      radius: 35,
                      backgroundColor: Color(0xFFD4AF37),
                      child: Icon(
                        Icons.favorite_border,
                        size: 35,
                        color: Color(0xFF1B100E),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Center(
                      child: Text(
                        "ميعاد سلطان الرويلي",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFD4AF37)),
                      ),
                    ),
                    const SizedBox(height: 40),
                    _buildCenteredCard(
                      "رفيقك الرقمي",
                      "جسرٌ يربطُ قلبك بالذِّكر، صُمم ليكون رفيقك الرقمي الذي يُحوّل هاتفك إلى محرابٍ للاستغفار، ويملأُ لحظاتك بالطمأنينة والسكينة في زحام الحياة",
                    ),
                    _buildCenteredCard(
                      "كلمة المطور",
                      "تم تطوير هذا العمل بنية خالصة ليكون صدقة جاريةعن أجدادي -رحمهم الله-، سائلاً الله أن يكتب به الأجر لكل من ذكره، وأن يبقى أثره طيباً ومستمراً للأبد",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 25, top: 10),
              child: Column(
                children: [
                  const Text(
                    "الإصدار 3.0.0",
                    style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFFD7CCC8),
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "جميع الحقوق محفوظة © 2026",
                    style: TextStyle(
                        fontSize: 9,
                        color: Color(0xFFD7CCC8),
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCenteredCard(String title, String content) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: const Color(0xFF2C1A17),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
            color: const Color(0xFFD4AF37).withOpacity(0.5), width: 0.5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFD4AF37)),
          ),
          const SizedBox(height: 12),
          Text(
            content,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 15, color: Color(0xFFD7CCC8), height: 1.6),
          ),
        ],
      ),
    );
  }
}
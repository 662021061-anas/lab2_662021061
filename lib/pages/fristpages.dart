import 'package:flutter/material.dart';

class Fristpages extends StatelessWidget {
  const Fristpages({super.key});

  Widget infoRow(IconData icon, String text) {
    return SizedBox(
      width: 280,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 30,
            child: Icon(icon),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Anas"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.only(top: 40),
    child: Center( // ⭐ สำคัญ
      child: SizedBox(
        width: double.infinity, // ⭐ บังคับกินทั้งจอ
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // รูปโปรไฟล์
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(
                  "assets/6d240d1297523c84f8ab35e9bcc64f94.jpg",
                ),
              ),
            ),

            const SizedBox(height: 24),

            // การ์ดข้อมูล
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 24,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    infoRow(Icons.person, "MR. Anas Suksupap"),
                    const SizedBox(height: 14),
                    infoRow(Icons.cake, "06 January 2004"),
                    const SizedBox(height: 14),
                    infoRow(Icons.phone, "080-9901843"),
                    const SizedBox(height: 14),
                    infoRow(Icons.email, "662021061@tsu.ac.th"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ),
),

      backgroundColor: Colors.pink.shade50, //  พื้นหลังทั้งหน้า
    );
  }
}

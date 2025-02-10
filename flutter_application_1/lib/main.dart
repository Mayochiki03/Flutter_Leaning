import 'package:flutter/material.dart';
import 'pages/home_page.dart'; // นำเข้าไฟล์ home_page.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Application Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green, // ตั้งค่าพื้นหลังเป็นสีเขียว
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // จัดเนื้อหาให้อยู่กึ่งกลางในแนวตั้ง
          crossAxisAlignment:
              CrossAxisAlignment.center, // จัดเนื้อหาให้อยู่กึ่งกลางในแนวนอน
          children: [
            // โลโก้จากโฟลเดอร์ images
            Image.asset(
              'image/Logo_KFC.png', // Path ของรูปภาพ
              width: 220,
              height: 220,
            ),
            const SizedBox(height: 50), // เพิ่มระยะห่างจาก 20 เป็น 40
            const Text(
              'fast delivery at your doorstep',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // จัดข้อความให้อยู่กึ่งกลาง
            ),
            const SizedBox(height: 20), // ระยะห่างระหว่างข้อความ
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20), // ระยะห่างจากขอบซ้ายและขวา
              child: const Text(
                'Home delivery and online reservation system for restaurants & cafes',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center, // จัดข้อความให้อยู่กึ่งกลาง
              ),
            ),
          ],
        ),
      ),
      // เพิ่มปุ่ม "Let's Explore" ที่ด้านล่างของหน้า
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(25.0), // ระยะห่างจากขอบ
        child: ElevatedButton(
          onPressed: () {
            // นำทางไปยังหน้า HomePage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
          style: ElevatedButton.styleFrom(
            minimumSize:
                const Size(double.infinity, 60), // ปรับขนาดขั้นต่ำของปุ่ม
            textStyle: const TextStyle(fontSize: 25), // ปรับขนาดข้อความในปุ่ม
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // ปรับความมนของมุมปุ่ม
            ),
          ),
          child: const Text(
            "Let's Explore",
            style:
                TextStyle(color: Colors.green), // เปลี่ยนสีข้อความเป็นสีเขียว
          ),
        ),
      ),
    );
  }
}

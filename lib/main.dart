import 'package:flutter/material.dart';
import 'screen/item.dart'; // ข้อ 12: นำเข้าหน้า item.dart

void main() {
  // ข้อ 12: เปลี่ยนจุดเรียกแสดงผลจาก AddForm() กลับมาเป็น MyApp()
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("รายการอาหาร"),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: const Item(), // เรียกแสดงผลรายการอาหาร
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../models/foodmenu.dart';
import 'addform.dart'; // อย่าลืม import หน้า addform.dart เพื่อเรียกใช้งาน AddForm()

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: emp.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: emp[index].bgColor,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            emp[index].name,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            emp[index].component,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "ประเภทอาหาร : ${emp[index].foodType.ty}",
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "ราคา : ${emp[index].price} บาท",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      emp[index].foodpic.image,
                      width: 80,
                      height: 80,
                    ),
                  ],
                ),
              );
            },
          ), // ListView.builder
        ), // Expanded

        // ข้อ 14 & 15: สร้างปุ่มกดเครื่องหมาย + เพื่อ Routing ไปยังหน้า AddForm
        SizedBox(
          width: 100,
          height: 80,
          child: IconButton(
            icon: const Icon(
              Icons.add,
              size: 40,
              color: Colors.amber,
            ), // Icon
            onPressed: () { // ข้อ 15: นำทางไปยังหน้า AddForm
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddForm()),
              );
            },
          ), // IconButton
        ), // SizedBox
      ],
    );
  }
}
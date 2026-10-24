import 'package:flutter/material.dart';

// ข้อ 6: Enum เก็บชนิดอาหาร
enum FoodType {
  ttype1(ty: "ต้ม"),
  ttype2(ty: "สุขภาพ"),
  ttype3(ty: "สเต๊ก"),
  ttype4(ty: "ฟาสต์ฟู้ด"),
  ttype5(ty: "เส้น");

  const FoodType({required this.ty});
  final String ty;
}

// ข้อ 19: แก้ไข Enum Foodpic โดยเพิ่ม namefood
enum Foodpic {
  menu1(namefood: "สุกี้", image: "assets/images/1.png"),
  menu2(namefood: "สลัดรวม", image: "assets/images/2.png"),
  menu3(namefood: "สเต๊กหมู", image: "assets/images/3.png"),
  menu4(namefood: "สเต๊กเนื้อ", image: "assets/images/4.png"),
  menu5(namefood: "แฮมเบอร์เกอร์", image: "assets/images/5.png"),
  menu6(namefood: "พิซซ่า", image: "assets/images/6.png"),
  menu7(namefood: "ก๋วยเตี๋ยว", image: "assets/images/7.png");

  const Foodpic({required this.image, required this.namefood});
  final String image;
  final String namefood;
}

class FoodMenu {
  FoodMenu({
    required this.name,
    required this.component,
    required this.price,
    required this.foodpic,
    required this.foodType,
    this.bgColor = Colors.white,
  });

  String name;
  String component;
  int price;
  Foodpic foodpic;
  FoodType foodType;
  Color bgColor;
}

List<FoodMenu> emp = [
  FoodMenu(
    name: "สุกี้ผักรวม",
    component: "ไข่ไก่, เกี๊ยวกุ้ง, ปูอัด, เบคอน, ผักสด",
    price: 299,
    foodpic: Foodpic.menu1,
    foodType: FoodType.ttype1,
    bgColor: Colors.lightGreenAccent.shade100,
  ),
  FoodMenu(
    name: "สลัดผัก",
    component: "แครอท, มะเขือเทศ, ผักรวม",
    price: 159,
    foodpic: Foodpic.menu2,
    foodType: FoodType.ttype2,
    bgColor: Colors.lightGreenAccent.shade200,
  ),
  FoodMenu(
    name: "สเต๊กเนื้อผักโขม",
    component: "เนื้อวัว, ผักโขม, มะเขือเทศ",
    price: 389,
    foodpic: Foodpic.menu3,
    foodType: FoodType.ttype3,
    bgColor: Colors.orangeAccent.shade100,
  ),
  FoodMenu(
    name: "สเต๊กเนื้อไข่ดาว",
    component: "เนื้อวัว, ไข่ดาว, เฟรนช์ฟรายส์",
    price: 349,
    foodpic: Foodpic.menu4,
    foodType: FoodType.ttype3,
    bgColor: Colors.orangeAccent.shade100,
  ),
  FoodMenu(
    name: "ชีสเบอร์เกอร์",
    component: "ขนมปัง, เนื้อบด, ชีส, ผักกาดหอม",
    price: 189,
    foodpic: Foodpic.menu5,
    foodType: FoodType.ttype4,
    bgColor: Colors.redAccent.shade100,
  ),
  FoodMenu(
    name: "พิซซ่าเปปเปอโรนี",
    component: "แป้งพิซซ่า, ชีส, เปปเปอโรนี",
    price: 299,
    foodpic: Foodpic.menu6,
    foodType: FoodType.ttype4,
    bgColor: Colors.redAccent.shade100,
  ),
  FoodMenu(
    name: "ราเมงทงคตสึ",
    component: "เส้นราเมง, ไข่ต้ม, ชาชู, นารูโตะ",
    price: 219,
    foodpic: Foodpic.menu7,
    foodType: FoodType.ttype5,
    bgColor: Colors.purple.shade100,
  ),
];
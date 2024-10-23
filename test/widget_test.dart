// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

/*void main() {
 //tipe data dan variable
 
 var mahasiswa = "Rizal";
 var umur = "20";

 print(mahasiswa + " Umur = " + umur.toString());
 //string
 String mahasiswaString;
 mahasiswaString = "iin";

 print(mahasiswaString);

 //int
 int semester;
 semester = 6;

 print(semester);

 //double
 double ipk;
 ipk = 3;

 print(ipk);

 //boolean
 bool benar = true;
 bool salah = false;
 bool tidakbenar = !true;
 bool tidaksalah = !false;

 //list
 List jurusan = [
  "Teknik Informatika",
  "Sistem Informasi",
  "DKV",
  semester.toString(),
  ipk.toString(),
 ];
 print(jurusan);

 //map
 Map<String, dynamic> kelas = {
  "nama": "jal",
  "kelas": "TI 3",
 };

 print(kelas);
 print(kelas['nama']);
 print(kelas['kelas']);

 //operator
 int a, b;
 a = 9;
 b = 7;
 print("a = " + a.toString());
 print("b = " + b.toString());

 print(a+b);
 print(a-b);
 print(a/b);
 print(a*b);
 print(a>b);
 print(a<b);
 print(a>=b);
 print(a<=b);
}*/
// void main() {
// //final keywoard = imutable / tidak bisa dirubah
// //const final
// //const
// //const String mahasiswa = "anam";
// //final
 
//   final String mahasiswa;
//   mahasiswa = "anam";
//   print(mahasiswa);
 
// //null safety
// //? ! late
// //? digunakan dia boleh null
// //String? jurusan;
// // Untuk di isi nanti
//   late String jurusan;
 
//   jurusan = "TI";
// //   ! digunakan untuk memaksa dijalnkan di run / yakin ada datanya
//   print(jurusan.length);
 
// //   perulangan looping
// //   for plus
//   for (int no = 1; no <= 5; no++) {
//     print(no);
//   }
 
// //   for minus
//   for (int no = 5; no >= 1; no--) {
//     print(no);
//   }
 
// //   while
//   int no1 = 1;
//   int no2 = 5;
//   while (no1 <= no2) {
//     print(no1);
//     no1++;
//   }
 
// //   do while
//   int no3 = 1;
//   int no4 = 5;
//   do {
//     print(no3);
//     no3++;
//   } while (no3 <= no4);
// }

void main() {
  // Mendapatkan bulan saat ini
  int currentMonth = DateTime.now().month;

  // Memanggil fungsi untuk mengecek ganjil atau genap
  String result = checkOddEvenMonth(currentMonth);

  // Menampilkan hasilnya
  print('Bulan ini ($currentMonth) adalah bulan $result.');
}

String checkOddEvenMonth(int month) {
  // Memeriksa apakah bulan ganjil atau genap
  if (month % 2 == 0) {
    return 'genap';
  } else {
    return 'ganjil';
  }
}

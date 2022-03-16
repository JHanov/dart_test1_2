import 'dart:io';

import 'buku.dart';
import 'cd.dart';

void main(List<String> arguments) {
  int menu = 1;

  do {
    print(
        'Pilihlah Menu:\n1. Masukan Buku Biasa\n2. Masukan Buku Travel Guide\n3. Masukan Compact Disc\n4. Lihat barang\n5. Tampilan barang tertentu\n\n0. Exit');
    String? MENU = stdin.readLineSync();
    menu = int.parse(MENU!);
    if (menu == 1) {
      print('Masukan judul');
      String? judul = stdin.readLineSync();

      print('Masukan ID: ');
      String? ID = stdin.readLineSync();

      print('Masukan harga: ');
      String? harga = stdin.readLineSync();
      int Harga = int.parse(harga!);

      print('Masukan Deskripsi: ');
      String? desc = stdin.readLineSync();

      print('Masukan ISBN: ');
      String? ISBN = stdin.readLineSync();
      int isbn = int.parse(ISBN!);

      print('Masukan Nama Penulis');
      String? Penulis = stdin.readLineSync();

      var bukubiasa1 = BukuBiasa(ID!, judul!, Harga, desc!, isbn, Penulis!);
      print('${bukubiasa1.Data} \n\n');
    } else if (menu == 2) {
      print('Masukan judul');
      String? judul = stdin.readLineSync();

      print('Masukan ID: ');
      String? ID = stdin.readLineSync();

      print('Masukan Deskripsi: ');
      String? desc = stdin.readLineSync();

      print('Masukan harga: ');
      String? harga = stdin.readLineSync();
      int Harga = int.parse(harga!);

      print('Masukan ISBN: ');
      String? ISBN = stdin.readLineSync();
      int isbn = int.parse(ISBN!);

      print('Masukan Nama Penulis');
      String? Penulis = stdin.readLineSync();

      print('Masukan nama Negara: ');
      String? Negara = stdin.readLineSync();

      var bukutravel1 =
          TravelGuide(ID!, judul!, Harga, desc!, isbn, Penulis!, Negara!);
      print('${bukutravel1.Data} \n\n');
    } else if (menu == 3) {
      print('Masukan judul');
      String? judul = stdin.readLineSync();

      print('Masukan ID: ');
      String? ID = stdin.readLineSync();

      print('Masukan Deskripsi: ');
      String? desc = stdin.readLineSync();

      print('Masukan harga: ');
      String? harga = stdin.readLineSync();
      int Harga = int.parse(harga!);

      print('Masukan Artist:');
      String? artist = stdin.readLineSync();
      var compactdisc1 = CompactDisc(ID!, judul!, Harga, desc!, artist!);
      print('${compactdisc1.Data}\n\n');
    }
  } while (menu != 0);
}

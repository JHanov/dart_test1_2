import 'dart:io';
import 'dart:convert';
import 'barang.dart';
import 'buku.dart';
import 'cd.dart';
import 'dart:core';

void main(List<String> arguments) {
  int menu = 1;
  var head = <Barang>[];
  int ctrBuku = 0;
  int ctrCD = 0;
  int ctrTG = 0;
  int ctr = 1;

  do {
    print(
        'Pilihlah Menu:\n1. Masukan Buku Biasa\n2. Masukan Buku Travel Guide\n3. Masukan Compact Disc\n4. Tampilkan sebuah barang\n5. Pindahkan barang\n6. Menampilkan barang pada lokasi tertentu\n7. Menampilkan Barang dengan batas harga\n\n0. Exit');
    String? MENU = stdin.readLineSync();
    menu = int.parse(MENU!);

    if (menu == 1) {
      print('Masukan judul');
      String? judul = stdin.readLineSync();

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

      print('Masukan Lokasi tempat barang');
      String? Lokasi = stdin.readLineSync();

      head.add(BukuBiasa("BK" + (ctrBuku + 1).toString(), judul!, Harga, desc!,
          isbn, Penulis!, Lokasi!));
      ctrBuku++;

      // var bukubiasa1 = BukuBiasa(ID!, judul!, Harga, desc!, isbn, Penulis!);
      // print('${bukubiasa1.Data} \n\n');
    } else if (menu == 2) {
      print('Masukan judul');
      String? judul = stdin.readLineSync();

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

      print('Masukan Lokasi tempat barang');
      String? Lokasi = stdin.readLineSync();

      head.add(TravelGuide("TG" + (ctrTG + 1).toString(), judul!, Harga, desc!,
          isbn, Penulis!, Negara!, Lokasi!));
      ctrTG++;
      // var bukutravel1 =
      //     TravelGuide(ID!, judul!, Harga, desc!, isbn, Penulis!, Negara!);
      // print('${bukutravel1.Data} \n\n');
    } else if (menu == 3) {
      print('Masukan judul');
      String? judul = stdin.readLineSync();

      print('Masukan Deskripsi: ');
      String? desc = stdin.readLineSync();

      print('Masukan harga: ');
      String? harga = stdin.readLineSync();
      int Harga = int.parse(harga!);

      print('Masukan Artist:');
      String? artist = stdin.readLineSync();

      print('Masukan Lokasi tempat barang');
      String? Lokasi = stdin.readLineSync();

      head.add(CompactDisc("CD" + (ctrCD + 1).toString(), judul!, Harga, desc!,
          artist!, Lokasi!));
      ctrCD++;
      // var compactdisc1 = CompactDisc(ID!, judul!, Harga, desc!, artist!);
      // print('${compactdisc1.Data}\n\n');
    } else if (menu == 4) {
      print('Masukan Index Barang');
      String? Index = stdin.readLineSync();
      int index = int.parse(Index!);
      if (index < head.length) {
        print(head[0].Data);
      } else
        (print('Index tidak ada'));
    } else if (menu == 5) {
      if (head.isNotEmpty) {
        print('Masukan index barang');
        String? INDEX = stdin.readLineSync();
        int index = int.parse(INDEX!);
        if (index <= head.length + 1) {
          print(
              'Lokasi lama adalah ${head[index].location}\n Masukan Lokasi baru');
          String? Lokasibaru = stdin.readLineSync();
          head[index].location = Lokasibaru!;
        } else
          (print('Kelebihan Index'));
      } else
        (print('Index kosong'));
    } else if (menu == 6) {
      print('Lokasi: ');
      String? loca = stdin.readLineSync();
      loca = loca?.toLowerCase();
      for (int i = 0; i < head.length; i++) {
        if (loca == head[i].location.toLowerCase()) {
          print(head[i].Data);
        }
      }
      print('________________________');
    } else if (menu == 7) {
      print('Masukan jumlah barang: ');
      String? jum = stdin.readLineSync();
      int jumlah = int.parse(jum!);
      ctr = jumlah;

      if (jumlah <= head.length + 1) {
        print('Batas harga bawah: ');
        String? hargabawah = stdin.readLineSync();
        int hrgbawah = int.parse(hargabawah!);

        print('Batas harga atas: ');
        String? hargaatas = stdin.readLineSync();
        int hrgatas = int.parse(hargaatas!);

        do {
          for (int i = 0; i < head.length; i++) {
            if (head[i].harga <= hrgatas && head[i].harga >= hrgbawah) {
              print(head[i].Data);
              ctr--;
            }
          }
        } while (ctr == 0);
      } else
        (print('Jumlah kebanyakan'));
    }
  } while (menu != 0 || menu > 5);
}

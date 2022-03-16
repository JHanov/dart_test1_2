import 'barang.dart';

class BukuBiasa extends Barang {
  int ISBN = 000000000;
  String Penulis = 'Penulis';
  BukuBiasa(
      String ID, String Judul, int Harga, String Desc, int ISBN, String Penulis)
      : super(ID, Judul, Harga, Desc) {
    this.ISBN = ISBN;
    this.Penulis = Penulis;
  }
  get Data {
    return ('ID: $ID\nJudul: $Judul\nDeskripsi: $Desc\nHarga: Rp.$Harga\nISBN: $ISBN\nPenulis: $Penulis');
  }
}

class TravelGuide extends BukuBiasa {
  String Negara = 'Indonesia';
  TravelGuide(String ID, String Judul, int Harga, String Desc, int ISBN,
      String Penulis, String Negara)
      : super(ID, Judul, Harga, Desc, ISBN, Penulis) {
    this.Negara = Negara;
  }
  get Data {
    return ('ID: $ID\nJudul: $Judul\nDeskripsi: $Desc\nHarga: Rp.$Harga\nISBN: $ISBN\nPenulis: $Penulis\nNegara: $Negara');
  }
}

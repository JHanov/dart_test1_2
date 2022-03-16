import 'barang.dart';

class BukuBiasa extends Barang {
  int ISBN = 000000000;
  String Penulis = 'Penulis';
  BukuBiasa(String ID, String Judul, int Harga, String Desc, int ISBN,
      String Penulis, String Location)
      : super(ID, Judul, Harga, Desc, Location) {
    this.ISBN = ISBN;
    this.Penulis = Penulis;
  }
  @override
  // TODO: implement Data
  get Data => super.Data + '\nISBN: $ISBN\nPenulis: $Penulis';
}

class TravelGuide extends BukuBiasa {
  String Negara = 'Indonesia';
  TravelGuide(String ID, String Judul, int Harga, String Desc, int ISBN,
      String Penulis, String Negara, String Location)
      : super(ID, Judul, Harga, Desc, ISBN, Penulis, Location) {
    this.Negara = Negara;
  }

  @override
  // TODO: implement Data
  get Data => super.Data + '\nNegara: $Negara';
}

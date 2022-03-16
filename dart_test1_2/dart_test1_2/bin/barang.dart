import 'dart:io';

class Barang {
  String ID = 'id';
  String Judul = 'Judul';
  int Harga = 200000;
  String Desc = '-';
  String Location = '-';

  Barang(this.ID, this.Judul, this.Harga, this.Desc, this.Location);
  set judul(String dtJudul) {
    Judul = dtJudul;
  }

  String get judul => this.Judul;

  set id(String dtID) {
    ID = dtID;
  }

  String get id => this.ID;

  set harga(int dtHarga) {
    Harga = dtHarga;
  }

  int get harga => this.Harga;

  set desc(String dtDesc) {
    Desc = dtDesc;
  }

  String get desc => this.Desc;

  set location(String dtLocation) {
    Location = dtLocation;
  }

  String get location => this.Location;

  get Data {
    return ('\n\nObject: Compact Disc\n--------------------\nID: $ID\nJudul: $Judul\nDeskripsi: $Desc\nHarga: Rp.$Harga\nLokasi $Location');
  }
}

class Barang {
  String ID = 'id';
  String Judul = 'Judul';
  int Harga = 200000;
  String Desc = '-';

  Barang(this.ID, this.Judul, this.Harga, this.Desc);
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
}

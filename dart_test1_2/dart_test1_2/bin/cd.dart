import 'barang.dart';

class CompactDisc extends Barang {
  String Artist = 'Artist';
  CompactDisc(String ID, String Judul, int Harga, String Desc, String Artist)
      : super(ID, Judul, Harga, Desc) {
    this.Artist = Artist;
  }

  get Data {
    return ('ID: $ID\nJudul: $Judul\nDeskripsi: $Desc\nHarga: Rp.$Harga\nArtist: $Artist');
  }
}

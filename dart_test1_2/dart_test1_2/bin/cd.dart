import 'barang.dart';

class CompactDisc extends Barang {
  String Artist = 'Artist';
  CompactDisc(String ID, String Judul, int Harga, String Desc, String Artist,
      String Location)
      : super(ID, Judul, Harga, Desc, Location) {
    this.Artist = Artist;
  }

  @override
  // TODO: implement Data
  get Data => super.Data + '\nArtist: $Artist';
}

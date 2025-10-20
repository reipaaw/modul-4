import 'dart:io';

// =====================
// 🪵 Kelas Pohon (Enkapsulasi)
// =====================
class Pohon {
  int _tinggi; // private attribute

  Pohon(this._tinggi);

  int get tinggi => _tinggi; // getter

  void setTinggi(int nilaiBaru) {
    if (nilaiBaru >= 0) {
      _tinggi = nilaiBaru;
    }
  }
}

// =====================
// 🌲 Kelas Lahan (Agregasi)
// =====================
class Lahan {
  List<Pohon> daftarPohon = [];

  void tambahPohon(Pohon p) {
    daftarPohon.add(p);
  }

  // Hitung total kayu hasil potongan untuk batas X
  int hitungKayu(int batas) {
    int total = 0;
    for (var p in daftarPohon) {
      if (p.tinggi > batas) {
        total += p.tinggi - batas;
      }
    }
    return total;
  }
}

// =====================
// ⚙️ Kelas MesinTebang (Komposisi)
// =====================
class MesinTebang {
  final Lahan lahan; // komposisi: mesin butuh lahan agar bisa bekerja
  MesinTebang(this.lahan);

  int cariBatasOptimal(int kayuDibutuhkan) {
    int low = 0;
    int high = lahan.daftarPohon.map((p) => p.tinggi).reduce((a, b) => a > b ? a : b);
    int hasil = -1;

    while (low <= high) {
      int mid = (low + high) ~/ 2;
      int total = lahan.hitungKayu(mid);

      if (total >= kayuDibutuhkan) {
        hasil = mid;
        low = mid + 1; // coba batas lebih tinggi
      } else {
        high = mid - 1; // turunkan batas
      }
    }
    return hasil;
  }
}

// =====================
// 🤖 Kelas MesinTebangCerdas (Pewarisan + Polimorfisme)
// =====================
class MesinTebangCerdas extends MesinTebang {
  MesinTebangCerdas(Lahan l) : super(l);

  @override
  int cariBatasOptimal(int kayuDibutuhkan) {
    print("🔍 Mencari batas optimal dengan algoritma cerdas...");
    return super.cariBatasOptimal(kayuDibutuhkan);
  }
}

// =====================
// 🏁 Fungsi utama (Main Program)
// =====================
void main() {
  // Baca input
  List<String> input1 = stdin.readLineSync()!.split(' ');
  int n = int.parse(input1[0]);
  int m = int.parse(input1[1]);

  List<int> tinggiPohon = stdin.readLineSync()!
      .split(' ')
      .map((e) => int.parse(e))
      .toList();

  // Buat lahan dan isi dengan pohon (agregasi)
  var lahan = Lahan();
  for (int i = 0; i < n; i++) {
    lahan.tambahPohon(Pohon(tinggiPohon[i]));
  }

  // Gunakan mesin tebang (komposisi)
  var mesin = MesinTebangCerdas(lahan);
  int batas = mesin.cariBatasOptimal(m);

  print(batas);
}

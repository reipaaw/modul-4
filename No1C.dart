class Kendaraan {
  void jalan() {
    print("Kendaraan sedang berjalan");
  }
}

// Pewarisan langsung (tidak override)
class Mobil extends Kendaraan {
  void klakson() {
    print("Mobil membunyikan klakson: Tin tin!");
  }
}

// Overriding method jalan()
class Motor extends Kendaraan {
  @override
  void jalan() {
    print("Motor melaju di jalan raya");
  }

  void bunyiMesin() {
    print("Motor berbunyi: Brummm!");
  }
}

// Menambahkan method baru: terbang()
class Pesawat extends Kendaraan {
  @override
  void jalan() {
    print("Pesawat bergerak di landasan pacu");
  }

  void terbang() {
    print("Pesawat sedang terbang di udara!");
  }
}

void main() {
  var mobil = Mobil();
  mobil.jalan();      // pewarisan langsung dari Kendaraan
  mobil.klakson();

  print('---');

  var motor = Motor();
  motor.jalan();      // hasil override dari Kendaraan
  motor.bunyiMesin();

  print('---');

  var pesawat = Pesawat();
  pesawat.jalan();    // override: versi Pesawat
  pesawat.terbang();  // method baru
}

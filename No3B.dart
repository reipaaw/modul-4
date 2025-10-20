class Pegawai {
  void kerja() {
    print("Pegawai bekerja...");
  }
}

class Programmer extends Pegawai {
  @override
  void kerja() {
    print("Programmer menulis kode...");
  }
}

class Designer extends Pegawai {
  @override
  void kerja() {
    print("Designer membuat UI/UX...");
  }
}

// Class baru: Manager
class Manager extends Pegawai {
  @override
  void kerja() {
    print("Manager mengatur tim dan memimpin rapat...");
  }
}

void main() {
  List<Pegawai> daftar = [
    Programmer(),
    Designer(),
    Manager(),
    Pegawai()
  ];

  for (var p in daftar) {
    p.kerja();
  }
}

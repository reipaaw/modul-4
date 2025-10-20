class RekeningBank {
  double _saldo = 0; 

  void setor(double jumlah) {
    if (jumlah > 0) {
      _saldo += jumlah;
      print("Berhasil menyetor Rp$jumlah");
    } else {
      print("Jumlah setor harus bernilai positif!");
    }
  }

  void tarik(double jumlah) {
    if (jumlah <= 0) {
      print("Jumlah penarikan harus bernilai positif!");
    } else if (_saldo >= jumlah) {
      _saldo -= jumlah;
      print("Berhasil menarik Rp$jumlah");
    } else {
      print("Saldo tidak cukup!");
    }
  }

  double get saldo => _saldo;
}

void main() {
  var r = RekeningBank();

  r.setor(1000);   // valid
  print("Saldo: ${r.saldo}");

  r.tarik(500);    // valid
  print("Saldo: ${r.saldo}");

  r.setor(-200);   // tidak valid
  r.tarik(1000);   // saldo tidak cukup
}

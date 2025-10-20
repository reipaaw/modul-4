class RekeningBank {
 double _saldo = 0; 
 void setor(double jumlah) {
 _saldo += jumlah;
 }
 void tarik(double jumlah) {
 if (_saldo >= jumlah) {
 _saldo -= jumlah;
 } else {
 print("Saldo tidak cukup!");
 }
 }
 double get saldo => _saldo;
}
void main() {
 var r = RekeningBank();
 r.setor(1000);
 print("Saldo: ${r.saldo}");
 r.tarik(500);
 print("Saldo: ${r.saldo}");
}
//Yang terjadi dari kode di atas adalah: program mensimulasikan aktivitas rekening bank sederhana,
// yaitu menyetor dan menarik uang dari saldo menggunakan prinsip enkapsulasi (data tersembunyi) dalam OOP.//
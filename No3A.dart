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
void main() {
 List<Pegawai> daftar = [Programmer(), Designer(), Pegawai()];
for (var p in daftar) {
 p.kerja();
 }
}

//Hasil dari kode ini menunjukkan bahwa dengan polimorfisme, satu method (kerja()) 
//bisa menghasilkan perilaku berbeda tergantung jenis objeknya.
//Ini membuat kode lebih efisien, mudah dibaca, dan mudah dikembangkan, tanpa harus
// membuat kondisi if atau switch untuk setiap jenis pegawai.//
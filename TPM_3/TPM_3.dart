// Tugas Praktik Mandiri (TPM) 3 - Azdan Vila Ramadhani
void main() {
  /*
  1.  Terdapat sebuah nilai:
      a. jika nilai > 70 akan mereturn “Nilai A”
      b. jika nilai > 40 akan mereturn “Nilai B”
      c. jika nilai > 0 akan mereturn “Nilai C”
      d. selain itu return teks kosong
  */

  print('=========No. 1=========');

  final score = 80;
  
  if(score > 70) {
    print("Nilai A");
  } else if(score > 40) {
    print("Nilai B");
  } else if(score > 0) {
    print("Nilai C");
  } else {
    print("");
  }

  /*
  2.  Tampilkan nilai 1 - 10 pada layar dengan menggunakan perulangan!
  */

  print('=========No. 2=========');

  for(var i = 1; i <= 10; i++) {
    print('i = $i');
  }

  /*
  3.  Buatlah sebuah fungsi dengan spesifikasi berikut:
      a. Menerima 2 parameter, yaitu list data dan pengali
      b. Lakukan perulangan pada list data secara asynchronous
      c. Tiap perulangan, kalikan elemen list data dengan pengali
      d. Return list baru yang berisi hasil proses diatas
  */

  print('=========No. 3=========');

  final data = [6, 9, 3, 7];
  final result = pengaliData(data, 3);
  print(result);
} 

List<int> pengaliData(List<int> data, int pengali) {
  List<int> result = [];

  for(var i = 0; i < data.length; i++) {
    final hasilKali = data[i] * pengali;
    result.add(hasilKali);
  }
  
  return result;
}

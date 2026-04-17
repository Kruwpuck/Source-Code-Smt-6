void main() {
  print("=== Array 2 Dimensi ===");
  List<List<int>> array2D = [];
  
  buatArray2D(array2D);
  
  tampilkanArray(array2D);
  
  print("\n=== Menghitung FPB ===");
  contohFPB();
}

void buatArray2D(List<List<int>> arr) {
  List<int> baris1 = [];
  for (int i = 0; i < 3; i++) {
    baris1.add(3 * (i + 1));
  }
  arr.add(baris1);
  
  List<int> baris2 = [];
  int bilGanjil = 1;
  for (int i = 0; i < 4; i++) {
    baris2.add(bilGanjil);
    bilGanjil += 2;
  }
  arr.add(baris2);
  
  List<int> baris3 = [];
  for (int i = 1; i <= 5; i++) {
    baris3.add(hitungFaktorial(i));
  }
  arr.add(baris3);
  
  List<int> baris4 = [];
  for (int i = 1; i <= 6; i++) {
    baris4.add(i);
  }
  arr.add(baris4);
}

int hitungFaktorial(int n) {
  if (n <= 1) return 1;
  int hasil = 1;
  for (int i = 2; i <= n; i++) {
    hasil *= i;
  }
  return hasil;
}

void tampilkanArray(List<List<int>> arr) {
  for (int i = 0; i < arr.length; i++) {
    String output = '';
    for (int j = 0; j < arr[i].length; j++) {
      if (j > 0) output += ' ';
      output += '${arr[i][j]}';
    }
    print(output);
  }
}

int hitungFPB(int a, int b) {
  if (a < b) {
    int temp = a;
    a = b;
    b = temp;
  }
  
  while (b != 0) {
    int sisa = a % b;
    a = b;
    b = sisa;
  }
  
  return a;
}

void contohFPB() {
  int bilangan1 = 12;
  int bilangan2 = 8;
  int fpb = hitungFPB(bilangan1, bilangan2);
  
  print("Bilangan 1: $bilangan1");
  print("Bilangan 2: $bilangan2");
  print("FPB $bilangan1 dan $bilangan2 = $fpb");
}
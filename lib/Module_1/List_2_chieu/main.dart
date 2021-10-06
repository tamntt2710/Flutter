/*
Bài 6: Nhập mảng 2 chiều các số nguyên dương có dạng là ma trận 3x3. Sắp xếp lại các phần tử trong mảng theo thứ tự tăng dần.

Bài 7: Nhập và mảng A, B là mảng 2 chiều. Các phân tử trong mảng là các số nguyên. Tính A x B.

Bài 8: Nhập và mảng A, B là mảng 2 chiều. Các phân tử trong mảng là các số nguyên. B có phải là ma trận nghịch đảo của A hay không?

*/
import 'dart:io';

void main() {
  var a = [];
  var b = [];
  var c = [];

  while (true) {
    menu();
    int luaChon = nhapSo();
    switch (luaChon) {
      case 1 :
        stdout.write(
            "\n1.Nhập mảng 2 chiều các số nguyên dương có dạng là ma trận 3x3 \n");
        a = nhapMaTran(a, "A");
        inMaTran(a);
        break;
      case 2:
        stdout.write(
            "\n2.Sắp xếp lại các phần tử trong mảng theo thứ tự tăng dần\n");
        sapXepTangDan(a);
        inMaTran(a);
        break;
      case 3 :
        stdout.write(
            "\n3.Nhập và mảng A, B là mảng 2 chiều. Các phân tử trong mảng là các số nguyên. Tính A x B.\n");
        b = nhapMaTran(b, "B");
        inMaTran(b);
        c = nhanMaTran(a, b);
        inMaTran(c);
        break;
      case 4:
        stdout.write("\n4.B có phải là ma trận nghịch đảo của A hay không?\n");
        bool ktra = true;
        for (int i = 0; i < c.length; i++) {
          for (int j = 0; j < c[i].length; j++) {
            if (i == j) {
              if (c[i][j] == 1)
                ktra = true;
              else
                ktra = false;
            } else if (i != j) {
              if (c[i][j] == 0)
                ktra = true;
              else
                ktra = false;
            }
          }
        }
          if (ktra == false) {
            stdout.write("B không là ma trận nghịch đảo của A");
          }
          else
            stdout.write("B là ma trận nghịch đảo của A");
        break;
      case 5:
        stdout.write("Thoát");
        return;
      default:
        stdout.write("Mời nhập lại");
        }
    }
  }

List nhanMaTran(List a,List b) {
  var matrantich =[[1,2,3],[1,2,3],[1,2,3]];
  print("\nTich cua hai ma tran la:\n");
  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < a[i].length; j++) {
      {
        matrantich[i][j] = 0;
        for (int k = 0; k < b[j].length; k++) {
          matrantich[i][j] += a[i][k] * b[k][j] as int;
        }
      }
    }
  }
  return matrantich;
}
void menu(){
  stdout.write("\n***************************************\n");
  stdout.write("\n1.Nhập mảng 2 chiều các số nguyên dương có dạng là ma trận 3x3 \n");
  stdout.write("\n2.Sắp xếp lại các phần tử trong mảng theo thứ tự tăng dần\n");
  stdout.write("\n3.Nhập và mảng A, B là mảng 2 chiều. Các phân tử trong mảng là các số nguyên. Tính A x B.\n");
  stdout.write("\n4.B có phải là ma trận nghịch đảo của A hay không?\n");
  stdout.write("\n5.Thoát\n");
  stdout.write("\n***************************************\n");
}
List nhapMaTran(List a, String name){
  stdout.write("\n Nhập ma trận ${name} \n");
  List<int> hang_1 = [];
  nhapHang(hang_1, 3,"hang_1");
  List<int> hang_2 = [];
  nhapHang(hang_2, 3,"hang_2");
  List<int> hang_3 = [];
  nhapHang(hang_3, 3,"hang_3");
  a = [hang_1, hang_2, hang_3];
  return a;
}

void sapXepTangDan(List a){
  print("Ma trận được sắp xếp : ");
  for(int k = 0; k<a.length ; k++)
    for(int i = 0; i<a.length-1 ; i++)
      for(int j = a.length-1; j>i ; j--)
        if(a[k][j]<a[k][j-1])
        {
          int temp = a[k][j];
          a[k][j] = a[k][j-1];
          a[k][j-1] = temp;
        }
}
void inMaTran(List a){
  for(int i = 0 ; i < a.length;i++){
    for (int j = 0; j<a[i].length;j++){
      stdout.write("${a[i][j]}    ");
    }
    stdout.write("\n");
  }
}
int nhapSo (){
  stdout.write("Nhap tu ban phim : ");
  String? b = stdin.readLineSync();
  int n = int.parse(b!);
  return n;
}
void nhapHang(List<int> a,int n, String name){
  for(int i = 0 ;i<n;i++){
    stdout.write("Input ${name}[${i}] : ");
    try {
      String? b = stdin.readLineSync();
      int value = int.parse(b!);
      a.add(value);
    } on FormatException {
      print('Format error!');
    }
  }
}

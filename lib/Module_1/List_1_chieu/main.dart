import 'dart:io';
/* Bài 1: Sử dụng mảng 1 chiều nhập vào dãy số nguyên gồm n phần tử.
Sắp xếp các phần tử theo thứ tự tăng dần, giảm dần ( Sử dụng switch...case).
Bài 2: Sử dụng mảng 1 chiều nhập vào dãy số nguyên gồm n phần tử. Tính tổng các phần tử thuộc mảng.
Bài 3: Sử dụng mảng 1 chiều nhập vào dãy số nguyên gồm n phần tử. In ra màn hình mảng các phần tử là số nguyên tố.
Bài 4: Sử dụng mảng 1 chiều nhập vào dãy số nguyên gồm n phần tử.
Nhập 1 số nguyên k bất kì. Kiểm tra k có thuộc mảng hay không và xuất hiện mấy lần trong mảng.
*/

void main(){
  List<int> a = [];
  while(true){
    menu();
    stdout.write("\nHãy nhập lựa chọn \n");
    int k = nhapSo();
    switch(k){
      case 1 :
        {
          stdout.write("Nhap so phan tu cua mang : \n");
          int n = nhapSo();
          nhapMang(a, n);
        }
        break;
      case 2:
        {
          stdout.write("\nSắp xếp tăng dần : \n");
          sapXepTangDan(a);
          inMang(a);
        }
        break;
      case 3:
        {
          stdout.write("\nSắp xếp giảm dần : \n");
          sapXepGiamDan(a);
          inMang(a);
        }
        break;
      case 4:
        {
          stdout.write("\nTổng là : \n");
          stdout.write(tinhTong(a));
        }
        break;
      case 5:
        {
          stdout.write("\nSố nguyên tố  : \n");
          soNguyenTo(a);
        }
        break;
      case 6 :
        stdout.write("\nKiểm tra sự tồn tại trong mảng  : \n");
        int m = nhapSo();
        if(kiemTra(a, m) == 0){
          stdout.write("\nKhông tồn tại $m trong mảng \n");
        }else{
          stdout.write("\nTồn tại $m trong mảng  ${kiemTra(a, m)} lần \n");
        }
        break;
      case 7 :
        stdout.write("\nThoát\n");
        return;
      default:
        stdout.write("\nNhập lại\n");
    }
  }

 // print(soSanh(a[0], a[1]));
}
void nhapMang(List<int> a,int n){
  for(int i = 0 ;i<n;i++){
    stdout.write("Input a[${i}] : ");
    try {
      String? b = stdin.readLineSync();
      int value = int.parse(b!);
      a.add(value);
    } on FormatException {
      print('Format error!');
    }

  }
  stdout.write("Kết thúc nhập\n ");
}
void inMang(List<int> a){
  for(int i = 0; i<a.length;i++){
    stdout.write("${a[i]}   ");
  }
}
void sapXepGiamDan(List<int> a){
  for(int i = 0 ; i<a.length;i++) {
    for(int j = i+1 ; j<a.length;j++){
      switch (soSanh(a[i], a[j])) {
        case 1:
          {
            int tmp = a[i];
            a[i] = a[j];
            a[j] = tmp;
          }
          break;
      case 0:
        {
          a[i] = a[i];
          a[j] = a[j];
        }
        break;
      }
    }
  }
  }
void sapXepTangDan(List<int> a){
  for(int i = 0 ; i<a.length;i++) {
    for(int j = i+1 ; j<a.length;j++){
      switch (soSanh(a[i], a[j])) {
        case -1:
          {
            int tmp = a[i];
            a[i] = a[j];
            a[j] = tmp;
          }
          break;
        case 0:
          {
            a[i] = a[i];
            a[j] = a[j];
          }
          break;
      }
    }
  }
}
int soSanh(int a, int b){
  if(a <= b)
    return 1;
  else if(a>=b)
    return -1;
  else
    return 0;
}
int tinhTong(List<int> a){
  int sum = 0;
  a.forEach((element) {
    sum+=element;
  });
  return sum;
}
void soNguyenTo(List<int> a){
  a.forEach((element) {
    if(element > 0) {
      int dem = 1;
      for (int i = 2; i < element; i++) {
        if (element % i == 0)
          dem++;
      }
      if (dem == 1) {
        stdout.write(element);
      }
    }
  });

}
int nhapSo (){
  stdout.write("Nhap tu ban phim : ");
  String? b = stdin.readLineSync();
  int n = int.parse(b!);
  return n;
}
int kiemTra(List<int> a, int n){
  int dem = 0;
  a.forEach((element) {
    if(element == n)
      dem++;
  });
  return dem;
}
void menu(){
  stdout.write("\n***************************************\n");
  stdout.write("\n1.Nhap so phan tu cua mang : \n");
  stdout.write("\n2.Sắp xếp tăng dần : \n");
  stdout.write("\n3.Sắp xếp giảm dần : \n");
  stdout.write("\n4.Tổng là : \n");
  stdout.write("\n5.Số nguyên tố  : \n");
  stdout.write("\n6.Kiểm tra sự tồn tại trong mảng  : \n");
  stdout.write("\n7.Thoát\n");
  stdout.write("\n***************************************\n");
}

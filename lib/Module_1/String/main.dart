/*
Bài 9: Nhập và từ bàn phím 1 chuỗi và 1 kí tự bất kì. Kiểm tra kí tự vừa nhập
vào có thuộc chuỗi hay không? Và kí tự đó xuất hiện mấy lần trong chuỗi

Bài 10: Nhập vào từ bàn phím 2 chuỗi. Tiến hành nối 2 chuỗi trên thành 1 chuỗi mới

Bài 11: Nhập vào từ bàn phím 1 chuỗi. Tạo menu với các chức năng sau:
1. Viết hoa toàn bộ chuỗi
2. Viết thường toàn bộ chuỗi
3. Thoát
 */
import 'dart:io';

void main(){
  while(true){
    menu();
    stdout.write("Nhập lựa chọn của bạn : ");
    int luaChon = nhapSo();
    switch(luaChon){
      case 1 :
        stdout.write("\n1.Nhập vào 1 chuỗi và 1 kí tự , kiểm tra kí tự có tồn tại trong chuỗi \n");
        String? b = nhapChuoi();
        String? search = nhapChuoi();
        stdout.write("\n");
        int dem = containsChar(b!,search!);
        if(dem == 0){
          print("Ki tu \'$search\' khong xuat hien trong \'$b\'");
        }else{
          print("Ki tu \'$search\' xuat hien trong \'$b\' $dem lan");
        }
        break;
      case 2 :
        stdout.write("\n2.Nhập vào 2 chuỗi và nối thành 1 chuỗi : \n");
        String? a = nhapChuoi();
        stdout.write("\n");
        String? b = nhapChuoi();
        stdout.write("\n");
       var c = '$a ${b}';
        stdout.write("$c");
        break;
      case 3 :
        stdout.write("\n3.viết hoa toàn bộ chuỗi : \n");
        String? a = nhapChuoi();
        stdout.write("\n");
        stdout.write("\n ${a!.toUpperCase()}");
        break;
      case 4 :
        stdout.write("\n3.viết hoa toàn bộ chuỗi : \n");
        String? a = nhapChuoi();
        stdout.write("\n");
        stdout.write("\n ${a!.toLowerCase()}");
        break;
      case 5:
        return;
      default :
        stdout.write("\nMời nhập lại !");
    }
  }




}
int nhapSo (){
  String? b = stdin.readLineSync();
  int n = int.parse(b!);
  return n;
}
void menu(){
  stdout.write("\n***************************************\n");
  stdout.write("\n1.Nhập vào 1 chuỗi và 1 kí tự , kiểm tra kí tự có tồn tại trong chuỗi \n");
  stdout.write("\n2.Nhập vào 2 chuỗi và nối thành 1 chuỗi : \n");
  stdout.write("\n3.viết hoa toàn bộ chuỗi : \n");
  stdout.write("\n4.viết thường toàn bộ chuỗi : \n");
  stdout.write("\n5.Thoát\n");
  stdout.write("\n***************************************\n");
}
String? nhapChuoi (){
  stdout.write("Nhap tu ban phim : ");
  String? b = stdin.readLineSync();
  return b;
}
int containsChar(String s, String search) {
  int dem = 0;
  if (s.length == 0)
    return 0;
  else {
    for (var c in s.runes) { //Phương thức runes trả về một Iterable gồm các mã Unicode của từng kí tự trong xâu. Kết hợp phương thức runes với vòng lặp for, chúng ta có thể duyệt qua từng kí tự của xâu.
     // print(String.fromCharCode(c));
      if (String.fromCharCode(c).compareTo(search) == 0) {
     //   print("Test ${String.fromCharCode(c).compareTo(search)}");
        dem++;
      }
    }
  }
  return dem;
}
import 'model/Sach.dart';
void thongTinSach(List<Sach> books){
  var s1 = Sach('S-0001', 'Dế mèn phiêu lưu ký', 'Thiếu nhi', 'TG-0043',
      'Tô Hoài', 'XB-0023', 'Kim Đồng', 'Hà Nội', '54', '2012', '58.000đ');
  books.add(s1);

  var s2 = Sach('S-0009', 'Dế Tony buổi sáng - Trên đường băng', 'Kỹ năng sống',
      'TG-0087', 'Tony', 'XB-0023', 'NXB Trẻ', 'Hà Nội', '4', '2018', '52.000đ');
  books.add(s2);

}
void timKiem(List<Sach> books){

  for(int i = 0 ; i<books.length;i++){
    if(books[i].tenSach == "Dế mèn phiêu lưu ký" && books[i].tenTacGia == "Tô"
        " Hoài" && books[i].tenNXB=="Kim Đồng"){
      print("Found");
    }
  }

}
String catChu(String a){
  var b = a.substring(0,a.length-1);
  return b;
}
void timKiemNhoHon(List<Sach>books){
  for(int i = 0; i<books.length;i++){
    books[i].giaTien = catChu(books[i].giaTien);
    if(double.parse(books[i].giaTien) >= 52.000){
      print(books[i].toString());
    }
  }
}
void capNhat(List<Sach> books){
  for(int i = 0; i<books.length;i++){
   if(books[i].tenSach=="Dế mèn phiêu lưu ký"){
     books[i].giaTien = "228.000d";
     print(books[i].toString());
   }
  }
}
/*
void convertToObj(List a){
  for(int i = 0 ; i <a.length;i++){
    if(i == 0){
      a[i] = catChu(a[i]);
    }
    a[i].trim();
  }
}
String catChu(String a){
  var b = a.substring(1,a.length);
  return b;
}
void main(){
  var a = "- Mã sách: S-0033, Tên sách: Mắt biếc, Thể loại: Tình cảm, Mã tác giả: TG-0005, Tác giả: Nguyễn Nhật Ánh, Mã nhà xuất bản: XB-0225, Tên nhà xuất bản: NXB Trẻ, Địa chỉ: Hà Nội, Số lần tái bản: 54, Năm xuất bản: 2012, Giá tiền: 58.000đ.";
  List myList = a.split(',');
  convertToObj(myList);
  for(int i = 0 ; i<myList.length;i++){
    List listKey = myList[i].split(":");
    print(listKey[1]);

  }

}
 */
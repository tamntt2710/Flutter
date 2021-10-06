
import 'dart:io';

import 'package:start_now/OOP/tacgia_tacpham/model/NhaXuatBan.dart';
import 'package:start_now/OOP/tacgia_tacpham/model/TacGia.dart';

class Sach extends TacGia with NhaXuatBan {
  var maSach;
  var tenSach;
  var theLoai;
  var soLanTai;
  var namXuatBan;
  var giaTien;
  Sach(maSach,tenSach,
      theLoai,maTacGia,tenTacGia,maNXB,tenNXB,diaChiNXB,soLanTai,namXuatBan,
      giaTien){
    super.maTacGia=maTacGia;
    super.tenTacGia=tenTacGia;
    super.maNXB = maNXB;
    super.tenNXB= tenNXB;
    super.diaChiNXB=diaChiNXB;
    this.maSach = maSach;
    this.tenSach = tenSach;
    this.theLoai= theLoai;
    this.soLanTai = soLanTai;
    this.namXuatBan = namXuatBan;
    this.giaTien =giaTien;

}
  @override
  String toString() {
    // TODO: implement toString
    return this.maSach +this.tenSach+this.theLoai+this.soLanTai+this
        .namXuatBan+this.giaTien +super.maTacGia+super.maTacGia+super
        .maNXB+super.tenNXB+super.diaChiNXB;
  }
  void fileOnHope(){
    File f = new File("F:\\test\\myFile.txt");
    f.writeAsStringSync("contents");
  //  print(f.readAsStringSync());

  }

}
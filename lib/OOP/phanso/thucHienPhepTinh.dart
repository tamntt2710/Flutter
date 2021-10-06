
import 'phanSo.dart';
void congPhanso(phanSo a,phanSo b){
  var tuSoTong = a.tuSo * b.mauSo + b.tuSo * a.mauSo;
  var mauSoTong = a.mauSo * b.mauSo;
  for(int i = tuSoTong>mauSoTong?tuSoTong:mauSoTong ; i>0;i++) {
    if (tuSoTong % i == 0 && mauSoTong % i == 0) {
      var tuMoi = tuSoTong / i;
      var mauMoi = mauSoTong / i;
      print('${tuMoi}/${mauMoi}');
    }
  }

}
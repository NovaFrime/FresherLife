class Pill {
  String id ="";
  String name ="";
  String thanhphan ="";
  String nhomthuoc ="";
  String hinhurl ="";
  String donggoi ="";
  String chidinh =""; //co the khong co
  String chongchidinh =""; //co the khong co
  String cachdung =""; //co the khong co
  String tuongtacthuoc ="";//co the khong co
  String tacdungphu ="";//co the khong co
  String chuy ="";//co the khong co
  String shape ="";
  String color ="";


  Pill(this.id, this.name, this.thanhphan, this.nhomthuoc, this.hinhurl,
      this.donggoi, this.shape, this.color,this.chidinh);

  Pill.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    thanhphan = json['thanh_phan'];
    nhomthuoc = json['nhom_thuoc'];
    donggoi = json['dong_goi'];
    hinhurl = json['hinh-src'];
    shape = json['shape'];
    color = json['color'];
    chidinh= json['chi_dinh'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['thanh_phan'] = this.thanhphan;
    data['nhom_thuoc'] = this.nhomthuoc;
    data['dong_goi'] = this.donggoi;
    data['hinh-src'] = this.hinhurl;
    data['shape'] = this.shape;
    data['color'] = this.color;
    data['chi_dinh']= this.chidinh;
    return data;
  }
}
class FoxModel {
  String image;
  String link;

  FoxModel({this.image, this.link});

  FoxModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['link'] = this.link;
    return data;
  }
}

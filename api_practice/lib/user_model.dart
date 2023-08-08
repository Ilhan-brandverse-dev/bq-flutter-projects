class UserModel {
  String? id;
  String? title;
  String? firstName;
  String? lastName;
  String? picture;

  UserModel({
    this.id,
    this.title,
    this.firstName,
    this.lastName,
    this.picture,
  });
  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    title = json['title']?.toString();
    firstName = json['firstName']?.toString();
    lastName = json['lastName']?.toString();
    picture = json['picture']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['picture'] = picture;
    return data;
  }
}

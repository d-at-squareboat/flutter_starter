import 'package:meta/meta.dart';

class UserModel {
  UserModel({
    @required this.uid,
    this.name,
    this.email,
    this.isVerified,
    this.photoUrl,
    this.phone,
    this.createdAt,
    this.updatedAt,
  });

  String uid;
  String name;
  String email;
  bool isVerified;
  String phone;
  String photoUrl;
  int createdAt;
  int updatedAt;

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        uid: json["uid"],
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? null : json["email"],
        isVerified: json["isVerified"] == null ? null : json["isVerified"],
        phone: json["phone"] == null ? null : json["phone"],
        photoUrl: json["photoURL"] == null ? null : json["photoURL"],
        createdAt: json["createdAt"] == null ? null : json["createdAt"],
        updatedAt: json["updatedAt"] == null ? null : json["updatedAt"],
      );

  Map<String, dynamic> toMap() => {
        "uid": uid,
        "name": name == null ? null : name,
        "email": email == null ? null : email,
        "isVerified": isVerified == null ? null : isVerified,
        "phone": phone == null ? null : phone,
        "photoURL": photoUrl == null ? null : photoUrl,
        "createdAt": createdAt == null ? null : createdAt,
        "updatedAt": updatedAt == null ? null : updatedAt,
      };
}

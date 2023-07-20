import 'dart:convert';

// UserTokenModel UserTokenModelFromJson(String str) =>
//     UserTokenModel.fromJson(json.decode(str));

// String UserTokenModelToJson(UserTokenModel data) => json.encode(data.toJson());

// class UserTokenModel {
//   String token;

//   UserTokenModel({
//     required this.token,
//   });

//   factory UserTokenModel.fromJson(Map<String, dynamic> json) => UserTokenModel(
//         token: json["token"],
//       );

//   Map<String, dynamic> toJson() => {
//         "token": token,
//       };
// }

class UserModel {
  String? token;

  UserModel({this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;

    return data;
  }
}

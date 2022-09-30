class User {
  int? uId;
  String? uName;
  String? uEmail;
  String? uPhone;
  String? uType;
  String? uToken;

  User({
    this.uId,
    this.uName,
    this.uEmail,
    this.uPhone,
    this.uType,
    this.uToken,
  });

  //converter
  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
      uId: responseData['id'],
      uName: responseData['name'],
      uEmail: responseData['email'],
      uPhone: responseData['phone'],
      uType: responseData['type'],
      uToken: responseData['token'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = uId;
    data['name'] = uName;
    data['email'] = uEmail;
    data['phone'] = uPhone;
    data['type'] = uType;
    data['token'] = uToken;
    return data;
  }
}

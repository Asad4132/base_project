class UserInfo {
  String? accessToken;
  String? tokenType;
  int? expiresIn;
  String? userName;
  String? userId;
  String? companyCode;
  String? issued;
  String? expires;

  UserInfo(
      {this.accessToken,
      this.tokenType,
      this.expiresIn,
      this.userName,
      this.userId,
      this.companyCode,
      this.issued,
      this.expires});

  UserInfo.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
    userName = json['userName'];
    userId = json['userId'];
    companyCode = json['companyCode'];
    issued = json['.issued'];
    expires = json['.expires'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    data['token_type'] = this.tokenType;
    data['expires_in'] = this.expiresIn;
    data['userName'] = this.userName;
    data['userId'] = this.userId;
    data['companyCode'] = this.companyCode;
    data['.issued'] = this.issued;
    data['.expires'] = this.expires;
    return data;
  }
}

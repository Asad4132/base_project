class DbInfo {
  int? clientId;
  bool? isSuccess;
  String? message;
  String? dbInfo;
  String? expiryDate;
  String? endDate;
  String? expiryMessage;

  DbInfo(
      {this.clientId,
      this.isSuccess,
      this.message,
      this.dbInfo,
      this.expiryDate,
      this.endDate,
      this.expiryMessage});

  DbInfo.fromJson(Map<String, dynamic> json) {
    clientId = json['ClientId'];
    isSuccess = json['IsSuccess'];
    message = json['Message'];
    dbInfo = json['DbInfo'];
    expiryDate = json['ExpiryDate'];
    endDate = json['EndDate'];
    expiryMessage = json['ExpiryMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ClientId'] = this.clientId;
    data['IsSuccess'] = this.isSuccess;
    data['Message'] = this.message;
    data['DbInfo'] = this.dbInfo;
    data['ExpiryDate'] = this.expiryDate;
    data['EndDate'] = this.endDate;
    data['ExpiryMessage'] = this.expiryMessage;
    return data;
  }
}

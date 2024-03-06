class Login_resone_model {
  String? message;
  String? messageTitle;
  int? id;
  String? accessToken;
  String? tokenType;
  int? expiresIn;
  User? user;

  Login_resone_model(
      {this.message,
      this.messageTitle,
      this.id,
      this.accessToken,
      this.tokenType,
      this.expiresIn,
      this.user});

  Login_resone_model.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    messageTitle = json['message_title'];
    id = json['id'];
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['message_title'] = this.messageTitle;
    data['id'] = this.id;
    data['access_token'] = this.accessToken;
    data['token_type'] = this.tokenType;
    data['expires_in'] = this.expiresIn;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? email;
  String? mobile;
  String? city;
  String? country;
  String? state;
  String? gender;
  Null? emailVerifiedAt;
  Null? package;
  Null? purchase;
  String? rememberToken;
  String? status;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.name,
      this.email,
      this.mobile,
      this.city,
      this.country,
      this.state,
      this.gender,
      this.emailVerifiedAt,
      this.package,
      this.purchase,
      this.rememberToken,
      this.status,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    city = json['city'];
    country = json['country'];
    state = json['state'];
    gender = json['gender'];
    emailVerifiedAt = json['email_verified_at'];
    package = json['package'];
    purchase = json['purchase'];
    rememberToken = json['remember_token'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['city'] = this.city;
    data['country'] = this.country;
    data['state'] = this.state;
    data['gender'] = this.gender;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['package'] = this.package;
    data['purchase'] = this.purchase;
    data['remember_token'] = this.rememberToken;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
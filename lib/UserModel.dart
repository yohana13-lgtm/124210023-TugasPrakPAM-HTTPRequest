
class UsersModel {
  final int? page;
  final int? perPage;
  final int? total;
  final int? totalPages;
  final List<Data>? data;
  final Support? support;

  UsersModel({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });

  UsersModel.fromJson(Map<String, dynamic> json)
      : page = json['page'] as int?,
        perPage = json['per_page'] as int?,
        total = json['total'] as int?,
        totalPages = json['total_pages'] as int?,
        data = (json['data'] as List?)?.map((dynamic e) => Data.fromJson(e as Map<String,dynamic>)).toList(),
        support = (json['support'] as Map<String,dynamic>?) != null ? Support.fromJson(json['support'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'page' : page,
    'per_page' : perPage,
    'total' : total,
    'total_pages' : totalPages,
    'data' : data?.map((e) => e.toJson()).toList(),
    'support' : support?.toJson()
  };
}

class Data {
  final int? id;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? avatar;

  Data({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        email = json['email'] as String?,
        firstName = json['first_name'] as String?,
        lastName = json['last_name'] as String?,
        avatar = json['avatar'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'email' : email,
    'first_name' : firstName,
    'last_name' : lastName,
    'avatar' : avatar
  };
}

class Support {
  final String? url;
  final String? text;

  Support({
    this.url,
    this.text,
  });

  Support.fromJson(Map<String, dynamic> json)
      : url = json['url'] as String?,
        text = json['text'] as String?;

  Map<String, dynamic> toJson() => {
    'url' : url,
    'text' : text
  };
}
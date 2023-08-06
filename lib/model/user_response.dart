

import 'package:hive/hive.dart';
part 'user_response.g.dart';

@HiveType(typeId: 0)
class UserResponse {
  @HiveField(0)
  int? _id;
  @HiveField(1)
  String? _createdAt;
  @HiveField(2)
  String? _updatedAt;
  @HiveField(3)
  int? _createdBy;
  @HiveField(4)
  int? _updatedBy;
  @HiveField(5)
  String? _firstName;
  @HiveField(6)
  String? _lastName;
  @HiveField(7)
  String? _surName;
  @HiveField(8)
  String? _userName;
  @HiveField(9)
  String? _email;
  @HiveField(10)
  int? _quarterId;
  @HiveField(11)
  String? _status;
  List<Roles>? _roles;
  List<Permissions>? _permissions;
  bool? _accountNonExpired;
  bool? _accountNonLocked;
  bool? _credentialsNonExpired;
  bool? _enabled;
  List<Authorities>? _authorities;
  String? _username;
  bool? _deleted;

  UserResponse(
      {int? id,
      String? createdAt,
      String? updatedAt,
      int? createdBy,
      int? updatedBy,
      String? firstName,
      String? lastName,
      String? surName,
      String? userName,
      String? email,
      int? quarterId,
      String? status,
      List<Roles>? roles,
      List<Permissions>? permissions,
      bool? accountNonExpired,
      bool? accountNonLocked,
      bool? credentialsNonExpired,
      bool? enabled,
      List<Authorities>? authorities,
      String? username,
      bool? deleted}) {
    if (id != null) {
      this._id = id;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
    if (createdBy != null) {
      this._createdBy = createdBy;
    }
    if (updatedBy != null) {
      this._updatedBy = updatedBy;
    }
    if (firstName != null) {
      this._firstName = firstName;
    }
    if (lastName != null) {
      this._lastName = lastName;
    }
    if (surName != null) {
      this._surName = surName;
    }
    if (userName != null) {
      this._userName = userName;
    }
    if (email != null) {
      this._email = email;
    }
    if (quarterId != null) {
      this._quarterId = quarterId;
    }
    if (status != null) {
      this._status = status;
    }
    if (roles != null) {
      this._roles = roles;
    }
    if (permissions != null) {
      this._permissions = permissions;
    }
    if (accountNonExpired != null) {
      this._accountNonExpired = accountNonExpired;
    }
    if (accountNonLocked != null) {
      this._accountNonLocked = accountNonLocked;
    }
    if (credentialsNonExpired != null) {
      this._credentialsNonExpired = credentialsNonExpired;
    }
    if (enabled != null) {
      this._enabled = enabled;
    }
    if (authorities != null) {
      this._authorities = authorities;
    }
    if (username != null) {
      this._username = username;
    }
    if (deleted != null) {
      this._deleted = deleted;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  int? get createdBy => _createdBy;
  set createdBy(int? createdBy) => _createdBy = createdBy;
  int? get updatedBy => _updatedBy;
  set updatedBy(int? updatedBy) => _updatedBy = updatedBy;
  String? get firstName => _firstName;
  set firstName(String? firstName) => _firstName = firstName;
  String? get lastName => _lastName;
  set lastName(String? lastName) => _lastName = lastName;
  String? get surName => _surName;
  set surName(String? surName) => _surName = surName;
  String? get userName => _userName;
  set userName(String? userName) => _userName = userName;
  String? get email => _email;
  set email(String? email) => _email = email;
  int? get quarterId => _quarterId;
  set quarterId(int? quarterId) => _quarterId = quarterId;
  String? get status => _status;
  set status(String? status) => _status = status;
  List<Roles>? get roles => _roles;
  set roles(List<Roles>? roles) => _roles = roles;
  List<Permissions>? get permissions => _permissions;
  set permissions(List<Permissions>? permissions) => _permissions = permissions;
  bool? get accountNonExpired => _accountNonExpired;
  set accountNonExpired(bool? accountNonExpired) =>
      _accountNonExpired = accountNonExpired;
  bool? get accountNonLocked => _accountNonLocked;
  set accountNonLocked(bool? accountNonLocked) =>
      _accountNonLocked = accountNonLocked;
  bool? get credentialsNonExpired => _credentialsNonExpired;
  set credentialsNonExpired(bool? credentialsNonExpired) =>
      _credentialsNonExpired = credentialsNonExpired;
  bool? get enabled => _enabled;
  set enabled(bool? enabled) => _enabled = enabled;
  List<Authorities>? get authorities => _authorities;
  set authorities(List<Authorities>? authorities) => _authorities = authorities;
  String? get username => _username;
  set username(String? username) => _username = username;
  bool? get deleted => _deleted;
  set deleted(bool? deleted) => _deleted = deleted;

  UserResponse.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _surName = json['surName'];
    _userName = json['userName'];
    _email = json['email'];
    _quarterId = json['quarter_id'];
    _status = json['status'];
    if (json['roles'] != null) {
      _roles = <Roles>[];
      json['roles'].forEach((v) {
        _roles!.add(new Roles.fromJson(v));
      });
    }
    if (json['permissions'] != null) {
      _permissions = <Permissions>[];
      json['permissions'].forEach((v) {
        _permissions!.add(new Permissions.fromJson(v));
      });
    }
    _accountNonExpired = json['accountNonExpired'];
    _accountNonLocked = json['accountNonLocked'];
    _credentialsNonExpired = json['credentialsNonExpired'];
    _enabled = json['enabled'];
    if (json['authorities'] != null) {
      _authorities = <Authorities>[];
      json['authorities'].forEach((v) {
        _authorities!.add(new Authorities.fromJson(v));
      });
    }
    _username = json['username'];
    _deleted = json['deleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['createdAt'] = this._createdAt;
    data['updatedAt'] = this._updatedAt;
    data['createdBy'] = this._createdBy;
    data['updatedBy'] = this._updatedBy;
    data['firstName'] = this._firstName;
    data['lastName'] = this._lastName;
    data['surName'] = this._surName;
    data['userName'] = this._userName;
    data['email'] = this._email;
    data['quarter_id'] = this._quarterId;
    data['status'] = this._status;
    if (this._roles != null) {
      data['roles'] = this._roles!.map((v) => v.toJson()).toList();
    }
    if (this._permissions != null) {
      data['permissions'] = this._permissions!.map((v) => v.toJson()).toList();
    }
    data['accountNonExpired'] = this._accountNonExpired;
    data['accountNonLocked'] = this._accountNonLocked;
    data['credentialsNonExpired'] = this._credentialsNonExpired;
    data['enabled'] = this._enabled;
    if (this._authorities != null) {
      data['authorities'] = this._authorities!.map((v) => v.toJson()).toList();
    }
    data['username'] = this._username;
    data['deleted'] = this._deleted;
    return data;
  }
}

@HiveType(typeId: 1)
class Roles {
  @HiveField(0)
  int? _id;
  @HiveField(1)
  String? _description;
  @HiveField(2)
  String? _roleName;
  @HiveField(3)
  String? _roleLevel;
  @HiveField(4)
  List<Permissions>? _permissions;
  @HiveField(5)
  bool? _deleted;

  Roles(
      {int? id,
      String? description,
      String? roleName,
      String? roleLevel,
      List<Permissions>? permissions,
      bool? deleted}) {
    if (id != null) {
      this._id = id;
    }
    if (description != null) {
      this._description = description;
    }
    if (roleName != null) {
      this._roleName = roleName;
    }
    if (roleLevel != null) {
      this._roleLevel = roleLevel;
    }
    if (permissions != null) {
      this._permissions = permissions;
    }
    if (deleted != null) {
      this._deleted = deleted;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get roleName => _roleName;
  set roleName(String? roleName) => _roleName = roleName;
  String? get roleLevel => _roleLevel;
  set roleLevel(String? roleLevel) => _roleLevel = roleLevel;
  List<Permissions>? get permissions => _permissions;
  set permissions(List<Permissions>? permissions) => _permissions = permissions;
  bool? get deleted => _deleted;
  set deleted(bool? deleted) => _deleted = deleted;

  Roles.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _description = json['description'];
    _roleName = json['roleName'];
    _roleLevel = json['roleLevel'];
    if (json['permissions'] != null) {
      _permissions = <Permissions>[];
      json['permissions'].forEach((v) {
        _permissions!.add(new Permissions.fromJson(v));
      });
    }
    _deleted = json['deleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['description'] = this._description;
    data['roleName'] = this._roleName;
    data['roleLevel'] = this._roleLevel;
    if (this._permissions != null) {
      data['permissions'] = this._permissions!.map((v) => v.toJson()).toList();
    }
    data['deleted'] = this._deleted;
    return data;
  }
}

@HiveType(typeId: 1)
class Permissions {
  @HiveField(0)
  int? _id;
  @HiveField(1)
  String? _description;
  @HiveField(2)
  String? _permissionName;

  Permissions({int? id, String? description, String? permissionName}) {
    if (id != null) {
      this._id = id;
    }
    if (description != null) {
      this._description = description;
    }
    if (permissionName != null) {
      this._permissionName = permissionName;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get permissionName => _permissionName;
  set permissionName(String? permissionName) =>
      _permissionName = permissionName;

  Permissions.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _description = json['description'];
    _permissionName = json['permissionName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['description'] = this._description;
    data['permissionName'] = this._permissionName;
    return data;
  }
}

@HiveType(typeId: 2)
class Authorities {
  @HiveField(0)
  String? _authority;

  Authorities({String? authority}) {
    if (authority != null) {
      this._authority = authority;
    }
  }

  String? get authority => _authority;
  set authority(String? authority) => _authority = authority;

  Authorities.fromJson(Map<String, dynamic> json) {
    _authority = json['authority'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['authority'] = this._authority;
    return data;
  }
}

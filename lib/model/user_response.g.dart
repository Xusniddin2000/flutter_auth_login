// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserResponseAdapter extends TypeAdapter<UserResponse> {
  @override
  final int typeId = 0;

  @override
  UserResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserResponse()
      .._id = fields[0] as int?
      .._createdAt = fields[1] as String?
      .._updatedAt = fields[2] as String?
      .._createdBy = fields[3] as int?
      .._updatedBy = fields[4] as int?
      .._firstName = fields[5] as String?
      .._lastName = fields[6] as String?
      .._surName = fields[7] as String?
      .._userName = fields[8] as String?
      .._email = fields[9] as String?
      .._quarterId = fields[10] as int?
      .._status = fields[11] as String?;
  }

  @override
  void write(BinaryWriter writer, UserResponse obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj._id)
      ..writeByte(1)
      ..write(obj._createdAt)
      ..writeByte(2)
      ..write(obj._updatedAt)
      ..writeByte(3)
      ..write(obj._createdBy)
      ..writeByte(4)
      ..write(obj._updatedBy)
      ..writeByte(5)
      ..write(obj._firstName)
      ..writeByte(6)
      ..write(obj._lastName)
      ..writeByte(7)
      ..write(obj._surName)
      ..writeByte(8)
      ..write(obj._userName)
      ..writeByte(9)
      ..write(obj._email)
      ..writeByte(10)
      ..write(obj._quarterId)
      ..writeByte(11)
      ..write(obj._status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RolesAdapter extends TypeAdapter<Roles> {
  @override
  final int typeId = 1;

  @override
  Roles read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Roles()
      .._id = fields[0] as int?
      .._description = fields[1] as String?
      .._roleName = fields[2] as String?
      .._roleLevel = fields[3] as String?
      .._permissions = (fields[4] as List?)?.cast<Permissions>()
      .._deleted = fields[5] as bool?;
  }

  @override
  void write(BinaryWriter writer, Roles obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj._id)
      ..writeByte(1)
      ..write(obj._description)
      ..writeByte(2)
      ..write(obj._roleName)
      ..writeByte(3)
      ..write(obj._roleLevel)
      ..writeByte(4)
      ..write(obj._permissions)
      ..writeByte(5)
      ..write(obj._deleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RolesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PermissionsAdapter extends TypeAdapter<Permissions> {
  @override
  final int typeId = 1;

  @override
  Permissions read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Permissions()
      .._id = fields[0] as int?
      .._description = fields[1] as String?
      .._permissionName = fields[2] as String?;
  }

  @override
  void write(BinaryWriter writer, Permissions obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj._id)
      ..writeByte(1)
      ..write(obj._description)
      ..writeByte(2)
      ..write(obj._permissionName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PermissionsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AuthoritiesAdapter extends TypeAdapter<Authorities> {
  @override
  final int typeId = 2;

  @override
  Authorities read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Authorities().._authority = fields[0] as String?;
  }

  @override
  void write(BinaryWriter writer, Authorities obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj._authority);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthoritiesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

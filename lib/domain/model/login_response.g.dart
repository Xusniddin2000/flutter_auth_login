// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginResponseAdapter extends TypeAdapter<LoginResponse> {
  @override
  final int typeId = 0;

  @override
  LoginResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LoginResponse(
      tokenType: fields[0] as String?,
      tokenBody: fields[1] as String?,
      userName: fields[2] as String?,
      refreshToken: fields[3] as String?,
      timestamp: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LoginResponse obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.tokenType)
      ..writeByte(1)
      ..write(obj.tokenBody)
      ..writeByte(2)
      ..write(obj.userName)
      ..writeByte(3)
      ..write(obj.refreshToken)
      ..writeByte(4)
      ..write(obj.timestamp);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

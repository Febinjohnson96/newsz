import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class UserSignUpModel extends HiveObject {
  @HiveField(0)
  final String? email;
  @HiveField(1)
  final String? userName;
  @HiveField(2)
  final String? passWord;

  UserSignUpModel({this.email, this.userName, this.passWord});
}

class UserSignUpModelAdapter extends TypeAdapter<UserSignUpModel> {
  @override
  final typeId = 1;

  @override
  UserSignUpModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserSignUpModel(
      email: fields[0] as String?,
      userName: fields[1] as String?,
      passWord: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserSignUpModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.email)
      ..writeByte(1)
      ..write(obj.userName)
      ..writeByte(2)
      ..write(obj.passWord);
  }
}

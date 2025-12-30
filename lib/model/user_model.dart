class UserModel {
  final String id;
  final String name;
  final int age;
  final int date;

  UserModel({
    required this.id,
    required this.name,
    required this.age,
    required this.date
  });

  factory UserModel.fromjson(Map<String,dynamic>json) {
    return UserModel(id: json['id'], name: json['name'], age: json['age'], date: json['date']);
  }
}
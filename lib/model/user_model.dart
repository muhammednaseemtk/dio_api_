class UserModel {
  final String name;
  final int age;
  

  UserModel({required this.name, required this.age,r});
  factory UserModel.fromjson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      age: json['age'],
     
       );
  }
}
class UserProfile {
  final String id;
  final String name;
  final String age;
  final String gender;
  final num weight;
  final num height;
  final num waist;

  UserProfile(
      {this.id,
      this.name,
      this.age,
      this.gender,
      this.weight,
      this.height,
      this.waist});

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['_id'] as String,
      name: json['name'] as String,
      age: json['age'] as String,
      gender: json['gender'] as String,
      weight: json['weight'] as num,
      height: json['height'] as num,
      waist: json['waist'] as num,
    );
  }

  double getBmi() {
    //weight is in kg
    //height is in meters
    return (weight / (height / 100 * height / 100));
  }
}

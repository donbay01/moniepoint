class User {
  String id;
  final String name;
  final String city;

  User({
    this.id = '',
    required this.name,
    required this.city});

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'city': city
  };
}
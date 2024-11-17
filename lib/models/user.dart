import 'package:flutter/cupertino.dart';

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

class UserData with ChangeNotifier {
  String _nickName = '';

  String get nickName => _nickName;

  void setUserName(String name) {
    _nickName = name;
    notifyListeners(); // Notify listeners when the name is updated
  }
}
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String id;
  final String email;
  final String? displayName;
  final String? avatarUrl;
  final int coinBalance;
  final int diamondBalance;

  User({
    required this.id,
    required this.email,
    this.displayName,
    this.avatarUrl,
    required this.coinBalance,
    required this.diamondBalance,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

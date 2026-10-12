import 'package:json_annotation/json_annotation.dart';

part 'gift.g.dart';

@JsonSerializable()
class Gift {
  final String id;
  final String name;
  final int coinPrice;
  final int diamondValue;
  final String assetUrl;
  final String? description;

  Gift({
    required this.id,
    required this.name,
    required this.coinPrice,
    required this.diamondValue,
    required this.assetUrl,
    this.description,
  });

  factory Gift.fromJson(Map<String, dynamic> json) => _$GiftFromJson(json);
  Map<String, dynamic> toJson() => _$GiftToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'live_stream.g.dart';

@JsonSerializable()
class LiveStream {
  final String id;
  final String hostId;
  final String title;
  final DateTime startedAt;
  final DateTime? endedAt;
  final int totalViewers;
  final int totalDiamondsEarned;
  final bool isActive;

  LiveStream({
    required this.id,
    required this.hostId,
    required this.title,
    required this.startedAt,
    this.endedAt,
    required this.totalViewers,
    required this.totalDiamondsEarned,
    required this.isActive,
  });

  factory LiveStream.fromJson(Map<String, dynamic> json) => _$LiveStreamFromJson(json);
  Map<String, dynamic> toJson() => _$LiveStreamToJson(this);
}

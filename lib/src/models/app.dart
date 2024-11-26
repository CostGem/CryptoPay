import 'package:json_annotation/json_annotation.dart';

part 'app.g.dart';

@JsonSerializable()
class App {
  App({
    required this.appID,
    required this.name,
    required this.paymentProcessingBotUsername,
  });

  factory App.fromJson(Map<String, dynamic> json) => _$AppFromJson(json);

  Map<String, dynamic> toJson() => _$AppToJson(this);

  @JsonKey(name: "app_id")
  final int? appID;

  final String? name;

  @JsonKey(name: "payment_processing_bot_username")
  final String? paymentProcessingBotUsername;
}

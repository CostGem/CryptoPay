import 'package:cryptopay/src/enums/webhook_update_type.dart';
import 'package:cryptopay/src/models/invoice.dart';
import 'package:json_annotation/json_annotation.dart';

part 'webhook_update.g.dart';

@JsonSerializable()
class WebhookUpdate {
  const WebhookUpdate({
    required this.updateId,
    required this.updateType,
    required this.requestDate,
    required this.payload,
  });

  factory WebhookUpdate.fromJson(Map<String, dynamic> json) =>
      _$WebhookUpdateFromJson(json);

  Map<String, dynamic> toJson() => _$WebhookUpdateToJson(this);

  @JsonKey(name: 'update_id')
  final int updateId;

  @JsonKey(name: 'update_type')
  final WebhookUpdateType updateType;

  @JsonKey(name: 'request_date')
  final DateTime requestDate;

  final Invoice payload;
}

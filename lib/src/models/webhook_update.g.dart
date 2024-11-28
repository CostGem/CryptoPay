// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WebhookUpdate _$WebhookUpdateFromJson(Map<String, dynamic> json) =>
    WebhookUpdate(
      updateId: (json['update_id'] as num).toInt(),
      updateType: $enumDecode(_$WebhookUpdateTypeEnumMap, json['update_type']),
      requestDate: DateTime.parse(json['request_date'] as String),
      payload: Invoice.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WebhookUpdateToJson(WebhookUpdate instance) =>
    <String, dynamic>{
      'update_id': instance.updateId,
      'update_type': _$WebhookUpdateTypeEnumMap[instance.updateType]!,
      'request_date': instance.requestDate.toIso8601String(),
      'payload': instance.payload,
    };

const _$WebhookUpdateTypeEnumMap = {
  WebhookUpdateType.INVOICE_PAID: 'invoice_paid',
};

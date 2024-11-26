// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

App _$AppFromJson(Map<String, dynamic> json) => App(
      appID: (json['app_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      paymentProcessingBotUsername:
          json['payment_processing_bot_username'] as String?,
    );

Map<String, dynamic> _$AppToJson(App instance) => <String, dynamic>{
      'app_id': instance.appID,
      'name': instance.name,
      'payment_processing_bot_username': instance.paymentProcessingBotUsername,
    };

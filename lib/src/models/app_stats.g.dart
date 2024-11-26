// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppStats _$AppStatsFromJson(Map<String, dynamic> json) => AppStats(
      volume: (json['volume'] as num).toDouble(),
      conversion: (json['conversion'] as num).toDouble(),
      uniqueUsersCount: (json['unique_users_count'] as num).toInt(),
      createdInvoiceCount: (json['created_invoice_count'] as num).toInt(),
      paidInvoiceCount: (json['paid_invoice_count'] as num).toInt(),
      startAt: DateTime.parse(json['start_at'] as String),
      endAt: DateTime.parse(json['end_at'] as String),
    );

Map<String, dynamic> _$AppStatsToJson(AppStats instance) => <String, dynamic>{
      'volume': instance.volume,
      'conversion': instance.conversion,
      'unique_users_count': instance.uniqueUsersCount,
      'created_invoice_count': instance.createdInvoiceCount,
      'paid_invoice_count': instance.paidInvoiceCount,
      'start_at': instance.startAt.toIso8601String(),
      'end_at': instance.endAt.toIso8601String(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Check _$CheckFromJson(Map<String, dynamic> json) => Check(
      checkId: (json['check_id'] as num).toInt(),
      hash: json['hash'] as String,
      asset: $enumDecode(_$AssetEnumMap, json['asset']),
      amount: json['amount'] as String,
      botCheckUrl: json['bot_check_url'] as String,
      status: $enumDecode(_$CheckStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['created_at'] as String),
      activatedAt: json['activated_at'] == null
          ? null
          : DateTime.parse(json['activated_at'] as String),
    );

Map<String, dynamic> _$CheckToJson(Check instance) => <String, dynamic>{
      'check_id': instance.checkId,
      'hash': instance.hash,
      'asset': _$AssetEnumMap[instance.asset]!,
      'amount': instance.amount,
      'bot_check_url': instance.botCheckUrl,
      'status': _$CheckStatusEnumMap[instance.status]!,
      'created_at': instance.createdAt.toIso8601String(),
      'activated_at': instance.activatedAt?.toIso8601String(),
    };

const _$AssetEnumMap = {
  Asset.USDT: 'USDT',
  Asset.TON: 'TON',
  Asset.SOL: 'SOL',
  Asset.GRAM: 'GRAM',
  Asset.NOT: 'NOT',
  Asset.HMSTR: 'HMSTR',
  Asset.CATI: 'CATI',
  Asset.MY: 'MY',
  Asset.DOGS: 'DOGS',
  Asset.DOGE: 'DOGE',
  Asset.BTC: 'BTC',
  Asset.LTC: 'LTC',
  Asset.ETH: 'ETH',
  Asset.BNB: 'BNB',
  Asset.TRX: 'TRX',
  Asset.USDC: 'USDC',
  Asset.JET: 'JET',
  Asset.SEND: 'SEND',
  Asset.PEPE: 'PEPE',
  Asset.WIF: 'WIF',
  Asset.BONK: 'BONK',
};

const _$CheckStatusEnumMap = {
  CheckStatus.ACTIVE: 'active',
  CheckStatus.ACTIVATED: 'activated',
};

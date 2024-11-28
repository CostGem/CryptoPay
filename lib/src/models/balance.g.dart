// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Balance _$BalanceFromJson(Map<String, dynamic> json) => Balance(
      currencyCode: $enumDecode(_$AssetEnumMap, json['currency_code']),
      available: json['available'] as String,
      onHold: json['onhold'] as String,
    );

Map<String, dynamic> _$BalanceToJson(Balance instance) => <String, dynamic>{
      'currency_code': _$AssetEnumMap[instance.currencyCode]!,
      'available': instance.available,
      'onhold': instance.onHold,
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

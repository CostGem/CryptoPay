// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transfer _$TransferFromJson(Map<String, dynamic> json) => Transfer(
      transferId: (json['transfer_id'] as num).toInt(),
      spendId: json['spend_id'] as String?,
      userId: (json['user_id'] as num).toInt(),
      asset: $enumDecode(_$AssetEnumMap, json['asset']),
      amount: double.parse(json['amount'] as String),
      status: json['status'] as String,
      completedAt: DateTime.parse(json['completed_at'] as String),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$TransferToJson(Transfer instance) => <String, dynamic>{
      'transfer_id': instance.transferId,
      'spend_id': instance.spendId,
      'user_id': instance.userId,
      'asset': _$AssetEnumMap[instance.asset]!,
      'amount': instance.amount,
      'status': instance.status,
      'completed_at': instance.completedAt.toIso8601String(),
      'comment': instance.comment,
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

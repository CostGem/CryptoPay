// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExchangeRate _$ExchangeRateFromJson(Map<String, dynamic> json) => ExchangeRate(
      isValid: json['is_valid'] as bool,
      isCrypto: json['is_crypto'] as bool,
      isFiat: json['is_fiat'] as bool,
      source: $enumDecode(_$ExchaneRateSourceEnumMap, json['source']),
      target: $enumDecode(_$FiatEnumMap, json['target']),
      rate: json['rate'] as String,
    );

Map<String, dynamic> _$ExchangeRateToJson(ExchangeRate instance) =>
    <String, dynamic>{
      'is_valid': instance.isValid,
      'is_crypto': instance.isCrypto,
      'is_fiat': instance.isFiat,
      'source': _$ExchaneRateSourceEnumMap[instance.source]!,
      'target': _$FiatEnumMap[instance.target]!,
      'rate': instance.rate,
    };

const _$ExchaneRateSourceEnumMap = {
  ExchaneRateSource.USDT: 'USDT',
  ExchaneRateSource.TON: 'TON',
  ExchaneRateSource.SOL: 'SOL',
  ExchaneRateSource.GRAM: 'GRAM',
  ExchaneRateSource.NOT: 'NOT',
  ExchaneRateSource.HMSTR: 'HMSTR',
  ExchaneRateSource.CATI: 'CATI',
  ExchaneRateSource.MY: 'MY',
  ExchaneRateSource.DOGS: 'DOGS',
  ExchaneRateSource.DOGE: 'DOGE',
  ExchaneRateSource.BTC: 'BTC',
  ExchaneRateSource.LTC: 'LTC',
  ExchaneRateSource.ETH: 'ETH',
  ExchaneRateSource.BNB: 'BNB',
  ExchaneRateSource.TRX: 'TRX',
  ExchaneRateSource.USDC: 'USDC',
  ExchaneRateSource.JET: 'JET',
  ExchaneRateSource.SEND: 'SEND',
  ExchaneRateSource.PEPE: 'PEPE',
  ExchaneRateSource.WIF: 'WIF',
  ExchaneRateSource.BONK: 'BONK',
  ExchaneRateSource.USD: 'USD',
  ExchaneRateSource.EUR: 'EUR',
  ExchaneRateSource.RUB: 'RUB',
  ExchaneRateSource.BYN: 'BYN',
  ExchaneRateSource.UAH: 'UAH',
  ExchaneRateSource.GBP: 'GBP',
  ExchaneRateSource.CNY: 'CNY',
  ExchaneRateSource.KZT: 'KZT',
  ExchaneRateSource.UZS: 'UZS',
  ExchaneRateSource.GEL: 'GEL',
  ExchaneRateSource.TRY: 'TRY',
  ExchaneRateSource.AMD: 'AMD',
  ExchaneRateSource.THB: 'THB',
  ExchaneRateSource.INR: 'INR',
  ExchaneRateSource.BRL: 'BRL',
  ExchaneRateSource.IDR: 'IDR',
  ExchaneRateSource.AZN: 'AZN',
  ExchaneRateSource.AED: 'AED',
  ExchaneRateSource.PLN: 'PLN',
  ExchaneRateSource.ILS: 'ILS',
  ExchaneRateSource.KGS: 'KGS',
  ExchaneRateSource.TJS: 'TJS',
};

const _$FiatEnumMap = {
  Fiat.USD: 'USD',
  Fiat.EUR: 'EUR',
  Fiat.RUB: 'RUB',
  Fiat.BYN: 'BYN',
  Fiat.UAH: 'UAH',
  Fiat.GBP: 'GBP',
  Fiat.CNY: 'CNY',
  Fiat.KZT: 'KZT',
  Fiat.UZS: 'UZS',
  Fiat.GEL: 'GEL',
  Fiat.TRY: 'TRY',
  Fiat.AMD: 'AMD',
  Fiat.THB: 'THB',
  Fiat.INR: 'INR',
  Fiat.BRL: 'BRL',
  Fiat.IDR: 'IDR',
  Fiat.AZN: 'AZN',
  Fiat.AED: 'AED',
  Fiat.PLN: 'PLN',
  Fiat.ILS: 'ILS',
  Fiat.KGS: 'KGS',
  Fiat.TJS: 'TJS',
};

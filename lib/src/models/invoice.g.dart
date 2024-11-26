// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map<String, dynamic> json) => Invoice(
      invoiceId: (json['invoice_id'] as num).toInt(),
      hash: json['hash'] as String,
      currencyType: $enumDecode(_$CurrencyTypeEnumMap, json['currency_type']),
      asset: $enumDecodeNullable(_$AssetEnumMap, json['asset']),
      fiat: $enumDecodeNullable(_$FiatEnumMap, json['fiat']),
      amount: json['amount'] as String,
      paidAsset: $enumDecodeNullable(_$AssetEnumMap, json['paid_asset']),
      paidAmount: json['paid_amount'] as String?,
      paidFiatRate: json['paid_fiat_rate'] as String?,
      acceptedAssets: (json['accepted_assets'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AssetEnumMap, e))
          .toList(),
      feeAsset: $enumDecodeNullable(_$AssetEnumMap, json['fee_asset']),
      feeAmount: (json['fee_amount'] as num?)?.toDouble(),
      fee: json['fee'] as String?,
      payUrl: json['pay_url'] as String?,
      botInvoiceUrl: json['bot_invoice_url'] as String,
      miniAppInvoiceUrl: json['mini_app_invoice_url'] as String,
      webAppInvoiceUrl: json['web_app_invoice_url'] as String,
      description: json['description'] as String?,
      status: $enumDecode(_$InvoiceStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['created_at'] as String),
      paidUsdRate: json['paid_usd_rate'] as String?,
      usdRate: json['usd_rate'] as String?,
      allowComments: json['allow_comments'] as bool,
      allowAnonymous: json['allow_anonymous'] as bool,
      expirationDate: json['expiration_date'] == null
          ? null
          : DateTime.parse(json['expiration_date'] as String),
      paidAt: json['paid_at'] == null
          ? null
          : DateTime.parse(json['paid_at'] as String),
      paidAnonymously: json['paid_anonymously'] as bool?,
      comment: json['comment'] as String?,
      hiddenMessage: json['hidden_message'] as String?,
      payload: json['payload'] as String?,
      paidBtnName:
          $enumDecodeNullable(_$PaidBtnNameEnumMap, json['paid_btn_name']),
      paidBtnUrl: json['paid_btn_url'] as String?,
    );

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
      'invoice_id': instance.invoiceId,
      'hash': instance.hash,
      'currency_type': _$CurrencyTypeEnumMap[instance.currencyType]!,
      'asset': _$AssetEnumMap[instance.asset],
      'fiat': _$FiatEnumMap[instance.fiat],
      'amount': instance.amount,
      'paid_asset': _$AssetEnumMap[instance.paidAsset],
      'paid_amount': instance.paidAmount,
      'paid_fiat_rate': instance.paidFiatRate,
      'accepted_assets':
          instance.acceptedAssets?.map((e) => _$AssetEnumMap[e]!).toList(),
      'fee_asset': _$AssetEnumMap[instance.feeAsset],
      'fee_amount': instance.feeAmount,
      'fee': instance.fee,
      'pay_url': instance.payUrl,
      'bot_invoice_url': instance.botInvoiceUrl,
      'mini_app_invoice_url': instance.miniAppInvoiceUrl,
      'web_app_invoice_url': instance.webAppInvoiceUrl,
      'description': instance.description,
      'status': _$InvoiceStatusEnumMap[instance.status]!,
      'created_at': instance.createdAt.toIso8601String(),
      'paid_usd_rate': instance.paidUsdRate,
      'usd_rate': instance.usdRate,
      'allow_comments': instance.allowComments,
      'allow_anonymous': instance.allowAnonymous,
      'expiration_date': instance.expirationDate?.toIso8601String(),
      'paid_at': instance.paidAt?.toIso8601String(),
      'paid_anonymously': instance.paidAnonymously,
      'comment': instance.comment,
      'hidden_message': instance.hiddenMessage,
      'payload': instance.payload,
      'paid_btn_name': _$PaidBtnNameEnumMap[instance.paidBtnName],
      'paid_btn_url': instance.paidBtnUrl,
    };

const _$CurrencyTypeEnumMap = {
  CurrencyType.CRYPTO: 'crypto',
  CurrencyType.FIAT: 'fiat',
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

const _$InvoiceStatusEnumMap = {
  InvoiceStatus.ACTIVE: 'active',
  InvoiceStatus.PAID: 'paid',
  InvoiceStatus.EXPIRED: 'expired',
};

const _$PaidBtnNameEnumMap = {
  PaidBtnName.VIEWITEM: 'viewItem',
  PaidBtnName.OPENCHANNEL: 'openChannel',
  PaidBtnName.OPENBOT: 'openBot',
  PaidBtnName.CALLBACK: 'callback',
};

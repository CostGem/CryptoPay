import 'package:cryptopay/src/enums/asset.dart';
import 'package:cryptopay/src/enums/currency_type.dart';
import 'package:cryptopay/src/enums/fiat.dart';
import 'package:cryptopay/src/enums/invoice_status.dart';
import 'package:cryptopay/src/enums/paid_btn_name.dart';
import 'package:json_annotation/json_annotation.dart';

part 'invoice.g.dart';

@JsonSerializable()
class Invoice {
  const Invoice({
    required this.invoiceId,
    required this.hash,
    required this.currencyType,
    this.asset,
    this.fiat,
    required this.amount,
    this.paidAsset,
    this.paidAmount,
    this.paidFiatRate,
    this.acceptedAssets,
    this.feeAsset,
    this.feeAmount,
    this.fee,
    this.payUrl,
    required this.botInvoiceUrl,
    required this.miniAppInvoiceUrl,
    required this.webAppInvoiceUrl,
    this.description,
    required this.status,
    required this.createdAt,
    this.paidUsdRate,
    this.usdRate,
    required this.allowComments,
    required this.allowAnonymous,
    this.expirationDate,
    this.paidAt,
    this.paidAnonymously,
    this.comment,
    this.hiddenMessage,
    this.payload,
    this.paidBtnName,
    this.paidBtnUrl,
  });

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceToJson(this);

  @JsonKey(name: 'invoice_id')
  final int invoiceId;

  final String hash;

  @JsonKey(name: 'currency_type')
  final CurrencyType currencyType;

  final Asset? asset;

  final Fiat? fiat;

  final String amount;

  @JsonKey(name: 'paid_asset')
  final Asset? paidAsset;

  @JsonKey(name: 'paid_amount')
  final String? paidAmount;

  @JsonKey(name: 'paid_fiat_rate')
  final String? paidFiatRate;

  @JsonKey(name: 'accepted_assets')
  final List<Asset>? acceptedAssets;

  @JsonKey(name: 'fee_asset')
  final Asset? feeAsset;

  @JsonKey(name: 'fee_amount')
  final double? feeAmount;

  final String? fee; // Deprecated

  @JsonKey(name: 'pay_url')
  final String? payUrl; // Deprecated

  @JsonKey(name: 'bot_invoice_url')
  final String botInvoiceUrl;

  @JsonKey(name: 'mini_app_invoice_url')
  final String miniAppInvoiceUrl;

  @JsonKey(name: 'web_app_invoice_url')
  final String webAppInvoiceUrl;

  final String? description;

  final InvoiceStatus status;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @JsonKey(name: 'paid_usd_rate')
  final String? paidUsdRate;

  @JsonKey(name: 'usd_rate')
  final String? usdRate; // Deprecated

  @JsonKey(name: 'allow_comments')
  final bool allowComments;

  @JsonKey(name: 'allow_anonymous')
  final bool allowAnonymous;

  @JsonKey(name: 'expiration_date')
  final DateTime? expirationDate;

  @JsonKey(name: 'paid_at')
  final DateTime? paidAt;

  @JsonKey(name: 'paid_anonymously')
  final bool? paidAnonymously;

  final String? comment;

  @JsonKey(name: 'hidden_message')
  final String? hiddenMessage;

  final String? payload;

  @JsonKey(name: 'paid_btn_name')
  final PaidBtnName? paidBtnName;

  @JsonKey(name: 'paid_btn_url')
  final String? paidBtnUrl;
}

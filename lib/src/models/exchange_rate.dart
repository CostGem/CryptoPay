import 'package:cryptopay/src/enums/exchane_rate_source.dart';
import 'package:cryptopay/src/enums/fiat.dart';
import 'package:json_annotation/json_annotation.dart';

part 'exchange_rate.g.dart';

@JsonSerializable()
class ExchangeRate {
  const ExchangeRate({
    required this.isValid,
    required this.isCrypto,
    required this.isFiat,
    required this.source,
    required this.target,
    required this.rate,
  });

  factory ExchangeRate.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRateFromJson(json);

  Map<String, dynamic> toJson() => _$ExchangeRateToJson(this);

  @JsonKey(name: 'is_valid')
  final bool isValid;

  @JsonKey(name: 'is_crypto')
  final bool isCrypto;

  @JsonKey(name: 'is_fiat')
  final bool isFiat;

  final ExchaneRateSource source;

  final Fiat target;

  final String rate;
}

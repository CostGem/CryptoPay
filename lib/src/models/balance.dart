import 'package:cryptopay/src/enums/asset.dart';
import 'package:json_annotation/json_annotation.dart';

part 'balance.g.dart';

@JsonSerializable()
class Balance {
  const Balance({
    required this.currencyCode,
    required this.available,
    required this.onHold,
  });

  factory Balance.fromJson(Map<String, dynamic> json) =>
      _$BalanceFromJson(json);

  Map<String, dynamic> toJson() => _$BalanceToJson(this);

  @JsonKey(name: 'currency_code')
  final Asset currencyCode;

  final String available;

  @JsonKey(name: 'onhold')
  final String onHold;
}

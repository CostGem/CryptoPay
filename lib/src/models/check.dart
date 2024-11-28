import 'package:cryptopay/src/enums/asset.dart';
import 'package:cryptopay/src/enums/check_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'check.g.dart';

@JsonSerializable()
class Check {
  const Check({
    required this.checkId,
    required this.hash,
    required this.asset,
    required this.amount,
    required this.botCheckUrl,
    required this.status,
    required this.createdAt,
    this.activatedAt,
  });

  factory Check.fromJson(Map<String, dynamic> json) => _$CheckFromJson(json);

  Map<String, dynamic> toJson() => _$CheckToJson(this);

  @JsonKey(name: 'check_id')
  final int checkId;

  final String hash;

  final Asset asset;

  final String amount;

  @JsonKey(name: 'bot_check_url')
  final String botCheckUrl;

  final CheckStatus status;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @JsonKey(name: 'activated_at')
  final DateTime? activatedAt;
}

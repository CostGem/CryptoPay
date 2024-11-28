import 'package:cryptopay/src/enums/asset.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transfer.g.dart';

@JsonSerializable()
class Transfer {
  const Transfer({
    required this.transferId,
    required this.spendId,
    required this.userId,
    required this.asset,
    required this.amount,
    required this.status,
    required this.completedAt,
    this.comment,
  });

  factory Transfer.fromJson(Map<String, dynamic> json) =>
      _$TransferFromJson(json);

  Map<String, dynamic> toJson() => _$TransferToJson(this);

  @override
  String toString() {
    return "Transfer $transferId; amount $amount; asset $asset";
  }

  @JsonKey(name: 'transfer_id')
  final int transferId;

  @JsonKey(name: 'spend_id')
  final String? spendId;

  @JsonKey(name: 'user_id')
  final int userId;

  final Asset asset;

  @JsonKey(fromJson: double.parse)
  final double amount;

  final String status;

  @JsonKey(name: 'completed_at')
  final DateTime completedAt;

  final String? comment;

  static double doubleFromStringJson(String value) => double.parse(value);
}

import 'package:json_annotation/json_annotation.dart';

part 'app_stats.g.dart';

@JsonSerializable()
class AppStats {
  const AppStats({
    required this.volume,
    required this.conversion,
    required this.uniqueUsersCount,
    required this.createdInvoiceCount,
    required this.paidInvoiceCount,
    required this.startAt,
    required this.endAt,
  });

  factory AppStats.fromJson(Map<String, dynamic> json) =>
      _$AppStatsFromJson(json);

  Map<String, dynamic> toJson() => _$AppStatsToJson(this);

  final double volume;

  final double conversion;

  @JsonKey(name: 'unique_users_count')
  final int uniqueUsersCount;

  @JsonKey(name: 'created_invoice_count')
  final int createdInvoiceCount;

  @JsonKey(name: 'paid_invoice_count')
  final int paidInvoiceCount;

  @JsonKey(name: 'start_at')
  final DateTime startAt;

  @JsonKey(name: 'end_at')
  final DateTime endAt;
}

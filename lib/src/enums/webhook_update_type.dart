// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

enum WebhookUpdateType {
  @JsonValue("invoice_paid")
  INVOICE_PAID
}

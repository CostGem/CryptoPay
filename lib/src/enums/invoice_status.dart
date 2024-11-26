// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

enum InvoiceStatus {
  @JsonValue("active")
  ACTIVE,

  @JsonValue("paid")
  PAID,

  @JsonValue("expired")
  EXPIRED
}

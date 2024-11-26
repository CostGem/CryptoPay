// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

enum Fiat {
  @JsonValue("USD")
  USD,

  @JsonValue("EUR")
  EUR,

  @JsonValue("RUB")
  RUB,

  @JsonValue("BYN")
  BYN,

  @JsonValue("UAH")
  UAH,

  @JsonValue("GBP")
  GBP,

  @JsonValue("CNY")
  CNY,

  @JsonValue("KZT")
  KZT,

  @JsonValue("UZS")
  UZS,

  @JsonValue("GEL")
  GEL,

  @JsonValue("TRY")
  TRY,

  @JsonValue("AMD")
  AMD,

  @JsonValue("THB")
  THB,

  @JsonValue("INR")
  INR,

  @JsonValue("BRL")
  BRL,

  @JsonValue("IDR")
  IDR,

  @JsonValue("AZN")
  AZN,

  @JsonValue("AED")
  AED,

  @JsonValue("PLN")
  PLN,

  @JsonValue("ILS")
  ILS,

  @JsonValue("KGS")
  KGS,

  @JsonValue("TJS")
  TJS;
}

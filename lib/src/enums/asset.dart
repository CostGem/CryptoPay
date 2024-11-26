// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

enum Asset {
  @JsonValue("USDT")
  USDT,

  @JsonValue("TON")
  TON,

  @JsonValue("SOL")
  SOL,

  @JsonValue("GRAM")
  GRAM,

  @JsonValue("NOT")
  NOT,

  @JsonValue("HMSTR")
  HMSTR,

  @JsonValue("CATI")
  CATI,

  @JsonValue("MY")
  MY,

  @JsonValue("DOGS")
  DOGS,

  @JsonValue("DOGE")
  DOGE,

  @JsonValue("BTC")
  BTC,

  @JsonValue("LTC")
  LTC,

  @JsonValue("ETH")
  ETH,

  @JsonValue("BNB")
  BNB,

  @JsonValue("TRX")
  TRX,

  @JsonValue("USDC")
  USDC,

  @JsonValue("JET")
  JET,

  @JsonValue("SEND")
  SEND,

  @JsonValue("PEPE")
  PEPE,

  @JsonValue("WIF")
  WIF,

  @JsonValue("BONK")
  BONK;
}

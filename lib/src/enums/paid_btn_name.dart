// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

enum PaidBtnName {
  @JsonValue("viewItem")
  VIEWITEM,

  @JsonValue("openChannel")
  OPENCHANNEL,

  @JsonValue("openBot")
  OPENBOT,

  @JsonValue("callback")
  CALLBACK
}

import 'dart:async';

import 'package:cryptopay/src/client/api_server.dart';
import 'package:cryptopay/src/client/base.dart';
import 'package:cryptopay/src/client/dio.dart';
import 'package:cryptopay/src/enums/asset.dart';
import 'package:cryptopay/src/enums/currency_type.dart';
import 'package:cryptopay/src/enums/fiat.dart';
import 'package:cryptopay/src/enums/paid_btn_name.dart';
import 'package:cryptopay/src/models/app.dart';
import 'package:cryptopay/src/models/exchange_rate.dart';
import 'package:cryptopay/src/models/invoice.dart';
import 'package:cryptopay/src/models/transfer.dart';
import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';

class CryptoPay extends BaseClient {
  CryptoPay._({
    required super.token,
    required super.dio,
    super.apiServer,
  });

  factory CryptoPay({required String token, ApiServer apiServer = MAINNET}) {
    Dio dio = DioClient.createDio(token, apiServer.apiUrl);

    return CryptoPay._(token: token, dio: dio, apiServer: apiServer);
  }

  Future<App> getMe() async {
    return await makeRequest<App>(
      'getMe',
      App.fromJson,
    );
  }

  Future<List<Transfer>> getTransfers({
    Asset? asset,
    List<int>? transfersIds,
    String? spendId,
    int? offset,
    int? count,
  }) async {
    return await makeRequest<Transfer>(
      'getTransfers',
      Transfer.fromJson,
      params: {
        "asset": asset,
        "transfers_ids": transfersIds?.join(","),
        "spend_id": spendId,
        "offset": offset,
        "count": count
      },
    );
  }

  Future<Transfer> transfer(
    int userId,
    Asset asset,
    double amount, {
    String? spendId,
    String? comment,
    bool? disableSendNotification,
  }) async {
    spendId ??= Uuid().v4();

    return await makeRequest<Transfer>(
      'transfer',
      Transfer.fromJson,
      params: {
        "user_id": userId,
        "asset": asset,
        "amount": amount,
        "spend_id": spendId,
        "comment": comment,
        "disable_send_notifications": disableSendNotification,
      },
    );
  }

  Future<List<ExchangeRate>> getExchangeRates() async {
    return await makeRequest(
      "getExchangeRates",
      ExchangeRate.fromJson,
    );
  }

  Future<Invoice> createInvoice(
    num amount, {
    CurrencyType? currencyType,
    Asset? asset,
    Fiat? fiat,
    List<Asset>? acceptedAssets,
    String? description,
    String? hiddenMessage,
    PaidBtnName? paidBtnName,
    String? paidBtnUrl,
    String? payload,
    bool? allowComments,
    bool? allowAnonymous,
    int? expiresIn,
  }) async {
    return await makeRequest<Invoice>(
      "createInvoice",
      Invoice.fromJson,
      params: {
        "amount": amount,
        "currency_type": currencyType,
        "asset": asset,
        "fiat": fiat,
        "acceptedAssets": acceptedAssets,
        "description": description,
        "hidden_message": hiddenMessage,
        "paid_btn_name": paidBtnName,
        "paid_btn_url": paidBtnUrl,
        "payload": payload,
        "allow_comments": allowComments,
        "allow_anonymous": allowAnonymous,
        "expires_in": expiresIn,
      },
    );
  }
}

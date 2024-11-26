import 'package:cryptopay/src/client/api_server.dart';
import 'package:cryptopay/src/client/client.dart';
import 'package:cryptopay/src/enums/asset.dart';
import 'package:cryptopay/src/models/exchange_rate.dart';
import 'package:cryptopay/src/models/invoice.dart';
import 'package:cryptopay/src/models/transfer.dart';

void main() async {
  CryptoPay cryptoPay = CryptoPay(
    token: "160064:AAC9hez8dZDYOwX2BhGLgYCAN0sZvdMPmKd",
    apiServer: MAINNET,
  );

  Invoice invoice = await cryptoPay.createInvoice(
    5,
    asset: Asset.USDT,
    acceptedAssets: [Asset.DOGS],
  );

  print(invoice.toJson());
}

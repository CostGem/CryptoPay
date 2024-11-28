import 'package:cryptopay/src/client/api_server.dart';
import 'package:cryptopay/src/client/client.dart';
import 'package:cryptopay/src/enums/asset.dart';
import 'package:cryptopay/src/models/exchange_rate.dart';
import 'package:cryptopay/src/models/invoice.dart';
import 'package:cryptopay/src/models/transfer.dart';

void main() async {
  CryptoPay cryptoPay = CryptoPay(
    token: "",
    apiServer: MAINNET,
  );

  await cryptoPay.transfer(5359929746, Asset.USDT, 30);
}

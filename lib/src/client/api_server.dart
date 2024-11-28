// ignore_for_file: constant_identifier_names

base class ApiServer {
  const ApiServer({required name, required apuUrl})
      : _name = name,
        _apiUrl = apuUrl;

  final String _name;
  final String _apiUrl;

  String get name => _name;
  String get apiUrl => _apiUrl;
}

const ApiServer MAINNET = ApiServer(
  name: "MAINNET",
  apuUrl: "https://pay.crypt.bot/api/",
);
const ApiServer TESTNET = ApiServer(
  name: "TESTNET",
  apuUrl: "https://testnet-pay.crypt.bot/api/",
);

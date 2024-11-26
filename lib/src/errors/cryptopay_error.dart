class CryptoPayError implements Exception {
  const CryptoPayError({required this.code, required this.name});

  final int code;
  final String name;
}

import 'dart:io';

Future<bool> checkInternet() async {
  try {
    var result = await InternetAddress.lookup("google.com");
    if (result.isNotEmpty && result.any((address) => address.rawAddress.isNotEmpty)) {
      return true;
    }
  } on SocketException catch (_) {
    return false;
  }
  return false;
}
import '../lib/common/security/encrypt.dart';
import '../lib/common/security/encrypt_io.dart';
import 'package:pointycastle/asymmetric/api.dart';
import 'package:intl/intl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  final plainText = '{\"email\":\"chinguyen621x@gmail.com\",\"fullName\":\"Chi nguyễn\",\"phonenumber\":\"0968861116\",\"password\":\"123456\",\"email\":\"chinguyen621x@gmail.com\",\"fullName\":\"Chi nguyễn\",\"phonenumber\":\"0968861116\",\"password\":\"123456\",\"email\":\"chinguyen621x@gmail.com\",\"fullName\":\"Chi nguyễn\",\"phonenumber\":\"0968861116\",\"password\":\"123456\",\"email\":\"chinguyen621x@gmail.com\",\"fullName\":\"Chi nguyễn\",\"phonenumber\":\"0968861116\",\"password\":\"123456\",\"email\":\"chinguyen621x@gmail.com\",\"fullName\":\"Chi nguyễn\",\"phonenumber\":\"0968861116\",\"password\":\"123456\",\"email\":\"chinguyen621x@gmail.com\",\"fullName\":\"Chi Nguyễn\",\"phoneNumber\":\"0968861116\",\"password\":\"123456\"}';

  /// GENERATE
  printTimeLog('Start generate');
  final pair = generateRSAkeyPair(exampleSecureRandom());
  printTimeLog('End generate');
  final public = pair.publicKey;
  final private = pair.privateKey;

  String pubKeyTxt = encodePublicKeyToPem(public);
  String prvKeyTxt = encodePrivateKeyToPem(private);

  writeToKeyFile(pubKeyTxt, 'test/public.pem');
  writeToKeyFile(prvKeyTxt, 'test/private.pem');

  var publicKey = await parseKeyFromFile<RSAPublicKey>('test/public.pem');
  var privKey = await parseKeyFromFile<RSAPrivateKey>('test/private.pem');

  print('Public Key length: ${publicKey.modulus!.bitLength}');
  print('Private Key length: ${privKey.modulus!.bitLength}');

  /// ENCRYPT
  group('RSA Encrypter', () {
    RSA rsa = RSA(publicKey: publicKey, privateKey: privKey);
    Encrypter encrypter = Encrypter(rsa);
    String encryptedTxt;
    String decryptedTxt;

    test('encrypt/decrypt', () {
      printTimeLog('Start encrypt');
      encryptedTxt = encrypter.encryptCustom(plainText);
      printTimeLog('End encrypt');
      print("Encrypted text: $encryptedTxt \r\n");

      printTimeLog('Start decrypt');
      decryptedTxt = encrypter.decryptCustom(encryptedTxt);
      printTimeLog('End decrypt');
      print("Decrypted text: $decryptedTxt \r\n");

      expect(decryptedTxt, equals(plainText));
    });
  });

  /// SIGN
  group('RSA Signer', () {
    RSASigner rsaSigner;
    Signer signer;
    String sign;
    bool verifyResult;

    rsaSigner = RSASigner(RSASignDigest.SHA256, publicKey: publicKey, privateKey: privKey);
    signer = Signer(rsaSigner);

    test('sign/verify', () {
      printTimeLog('Start sign');
      sign = signer.signCustom(plainText);
      printTimeLog('End sign');
      print("Sign: $sign \r\n");

      printTimeLog('Start verify sign');
      verifyResult = signer.verifyCustom(plainText, sign);
      printTimeLog('End verify sign');
      print("Result: $verifyResult \r\n");

      expect(verifyResult, equals(true));
    });
  });

}

void printTimeLog(String prefix){

  DateTime now = DateTime.now();
  String formattedDate = DateFormat('yyyy-MM-dd – HH:mm:ss.SSS').format(now);

  print('$prefix: $formattedDate');
}

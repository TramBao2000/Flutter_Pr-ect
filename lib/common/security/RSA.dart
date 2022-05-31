import 'dart:convert';

import 'package:iowallet/common/utils/AppConstant.dart';
import 'package:iowallet/common/utils/SharedPreferencesHelper.dart';
import 'package:pointycastle/export.dart';
import 'package:basic_utils/basic_utils.dart';
import 'dart:math';
import 'dart:typed_data';

class RSA {
  String rsaEncrypt(RSAPublicKey myPublic, String dataToEncrypt) {
    final encryptor = OAEPEncoding(RSAEngine())
      ..init(true, PublicKeyParameter<RSAPublicKey>(myPublic)); // true=encrypt
    return base64Encode(_processInBlocks(encryptor, Uint8List.fromList(dataToEncrypt.codeUnits)));
  }

  String rsaDecrypt(RSAPrivateKey myPrivate, String cipherText) {
    final decryptor = OAEPEncoding(RSAEngine())
      ..init(false, PrivateKeyParameter<RSAPrivateKey>(myPrivate)); // false=decrypt

    return base64Encode(_processInBlocks(decryptor, Uint8List.fromList(cipherText.codeUnits)));
  }

  Uint8List _processInBlocks(AsymmetricBlockCipher engine, Uint8List input) {
    final numBlocks = input.length ~/ engine.inputBlockSize +
        ((input.length % engine.inputBlockSize != 0) ? 1 : 0);

    final output = Uint8List(numBlocks * engine.outputBlockSize);

    var inputOffset = 0;
    var outputOffset = 0;
    while (inputOffset < input.length) {
      final chunkSize = (inputOffset + engine.inputBlockSize <= input.length)
          ? engine.inputBlockSize
          : input.length - inputOffset;

      outputOffset += engine.processBlock(
          input, inputOffset, chunkSize, output, outputOffset);

      inputOffset += chunkSize;
    }

    return (output.length == outputOffset)
        ? output
        : output.sublist(0, outputOffset);
  }

  String sign(String plainText, RSAPrivateKey privateKey) {
    var signer = RSASigner(SHA256Digest(), "0609608648016503040201");
    signer.init(true, PrivateKeyParameter<RSAPrivateKey>(privateKey));
    return  base64Encode(signer.generateSignature(Uint8List.fromList(plainText.codeUnits)).bytes);
  }

  bool verify(String signedMessage, String message, RSAPublicKey publicKey) {
    var signer = RSASigner(SHA256Digest(), "0609608648016503040201");
    signer.init(false, PublicKeyParameter<RSAPublicKey>(publicKey));
  //  message = regexMessage(message);
    return signer.verifySignature(Uint8List.fromList(message.codeUnits), RSASignature(base64Decode(signedMessage)));
  }

  Future<void> genPairKey() async {
    final pair = generateRSAkeyPair(exampleSecureRandom());
    final public = pair.publicKey;
    final private = pair.privateKey;
    AppConstant.myPublicKey = public;
    AppConstant.myPrivateKey = private;
    SharedPreferencesHelper().setString(
        "myPrivateKey", CryptoUtils.encodeRSAPrivateKeyToPem(private));
    SharedPreferencesHelper()
        .setString("myPublicKey", CryptoUtils.encodeRSAPublicKeyToPem(public));
  }

  AsymmetricKeyPair<RSAPublicKey, RSAPrivateKey> generateRSAkeyPair(
      SecureRandom secureRandom,
      {int bitLength = 2048}) {
    // Create an RSA key generator and initialize it

    final keyGen = RSAKeyGenerator()
      ..init(ParametersWithRandom(
          RSAKeyGeneratorParameters(BigInt.parse('65537'), bitLength, 64),
          secureRandom));

    // Use the generator
    final pair = keyGen.generateKeyPair();

    // Cast the generated key pair into the RSA key types

    final myPublic = pair.publicKey as RSAPublicKey;
    final myPrivate = pair.privateKey as RSAPrivateKey;

    return AsymmetricKeyPair<RSAPublicKey, RSAPrivateKey>(myPublic, myPrivate);
  }

  SecureRandom exampleSecureRandom() {
    final secureRandom = FortunaRandom();
    final seedSource = Random.secure();
    final seeds = <int>[];
    for (int i = 0; i < 32; i++) {
      seeds.add(seedSource.nextInt(255));
    }
    secureRandom.seed(KeyParameter(Uint8List.fromList(seeds)));
    return secureRandom;
  }
}

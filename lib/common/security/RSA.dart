import 'dart:convert';

import 'package:iowallet/common/utils/AppConstant.dart';
import 'package:iowallet/common/utils/SharedPreferencesHelper.dart';
import 'package:pointycastle/export.dart';
import 'package:basic_utils/basic_utils.dart';
import 'dart:math';
import 'dart:typed_data';

class RSA {
  String rsaEncrypt(RSAPublicKey myPublic, String dataToEncrypt) {
    AsymmetricBlockCipher encryptor = RSAEngine()..init(true, PublicKeyParameter<RSAPublicKey>(myPublic)); // true=encrypt
    return base64Encode(_processInBlocks(encryptor, Uint8List.fromList(dataToEncrypt.codeUnits)));
  }
  // String rsaEncrypt(RSAPublicKey myPublic, String dataToEncrypt) {
  //
  //   final encryptor = OAEPEncoding(RSAEngine())
  //     ..init(true, PublicKeyParameter<RSAPublicKey>(myPublic));
  //
  //   int keySize = (myPublic.modulus!.bitLength / 8).toInt();
  //   int maxLength = keySize - 42;
  //   List<int> bytes = utf8.encode(dataToEncrypt);
  //   int datalength = bytes.length;
  //   int iterations = (datalength / maxLength).toInt();
  //   Uint8List result;
  //   // result.
  //   //
  //   // for(int i = 0; i < iterations; i++){
  //   //   var tempBytes = <int>[];
  //   //   sb..base64Encode(_processInBlocks(encryptor, Uint8List.fromList(dataToEncrypt.codeUnits)));
  //   // }
  //   //
  //   // sb.toString();
  //   // true=encrypt
  //   return "d" ;
  // }
  // String encrypt(String text, RSAPublicKey pubKey) {
  //   var cipher = PKCS1Encoding(RSAEngine());
  //   cipher.init(true, PublicKeyParameter<RSAPublicKey>(pubKey));
  //   Uint8List output1 = cipher.process(utf8.encode(text));
  //   return  base64Encode(output1);
  // }
  //
  // String decrypt(String input, RSAPrivateKey privateKey) {
  //   var cipher = PKCS1Encoding(RSAEngine());
  //   cipher.init(false, PrivateKeyParameter<RSAPrivateKey>(privateKey));
  //   Uint8List output = cipher.process(base64Decode(input));
  //   return utf8.decode(output);
  // }
  String rsaDecrypt(RSAPrivateKey myPrivate, String data) {

    int dwKeySize = myPrivate.modulus!.bitLength;

    int base64BlockSize = (dwKeySize / 8 % 3) != 0 ? (dwKeySize / 8 / 3 * 4 + 4).toInt() : (dwKeySize / 8 / 3 * 4).toInt();

    int iterations = (data.length / base64BlockSize).toInt();

    for(int i = 0; i < iterations; i++){
      String sTemp = data.substring(base64BlockSize * i, base64BlockSize * i + base64BlockSize);

    }
    AsymmetricBlockCipher decryptor = RSAEngine()..init(
      false,
      PrivateKeyParameter<RSAPrivateKey>(myPrivate),
    );
    return base64Encode(_processInBlocks(decryptor, Uint8List.fromList(data.codeUnits)));
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

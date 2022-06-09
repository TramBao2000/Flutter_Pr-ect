import 'dart:convert';
import 'package:pointycastle/asymmetric/api.dart';
import 'dart:typed_data';

import 'encrypt.dart';

class RSACrypto {
  late RSAPrivateKey myPrivateKey;
  late RSAPublicKey myPublicKey;
  late RSAPublicKey serverPublicKey;
  late RSASigner rsaSigner;
  late Signer signer;
  late RSA rsa;
  late Encrypter encrypter;

  RSACrypto(RSAPrivateKey myPrivateKey, RSAPublicKey myPublicKey){
    this.myPrivateKey = myPrivateKey;
    this.myPublicKey = myPublicKey;
    this.rsaSigner = RSASigner(RSASignDigest.SHA256, publicKey: myPublicKey, privateKey: myPrivateKey);
    this.signer = Signer(rsaSigner);
    this.rsa = RSA(publicKey: myPublicKey, privateKey: myPrivateKey);
    this.encrypter = Encrypter(rsa);
  }

  void setServerPublicKey(RSAPublicKey serverPublicKey){
    this.serverPublicKey = serverPublicKey;
  }

  String rsaEncrypt(RSAPublicKey myPublic, String dataToEncrypt) {
    return encrypter.encryptCustom(dataToEncrypt);
  }

  String rsaDecrypt(RSAPrivateKey myPrivate, String datatoDecrypt) {
    return encrypter.decryptCustom(datatoDecrypt);
  }

  String sign(String plainText) {
    return signer.signCustom(plainText);
  }

  bool verify(String plainText, String sign,) {
    return signer.verifyCustom(plainText, sign);
  }
}

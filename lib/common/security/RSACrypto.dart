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
  late RSASigner rsaVerifier;
  late Signer verifier;
  late RSA rsaEncrypt;
  late RSA rsaDecrypt;
  late Encrypter encrypter;
  late Encrypter decrypter;

  RSACrypto(RSAPrivateKey myPrivateKey, RSAPublicKey myPublicKey){
    this.myPrivateKey = myPrivateKey;
    this.myPublicKey = myPublicKey;
    this.rsaSigner = RSASigner(RSASignDigest.SHA256, privateKey: myPrivateKey);
    this.signer = Signer(rsaSigner);
    this.rsaDecrypt = RSA(privateKey: myPrivateKey);
    this.decrypter = Encrypter(rsaDecrypt);
  }

  void setServerPublicKey(RSAPublicKey serverPublicKey){
    this.serverPublicKey = serverPublicKey;
    this.rsaEncrypt = RSA(publicKey: serverPublicKey);
    this.encrypter = Encrypter(rsaEncrypt);
    this.rsaVerifier = RSASigner(RSASignDigest.SHA256, publicKey: serverPublicKey);
    this.verifier = Signer(rsaVerifier);
  }

  String encrypt(String dataToEncrypt) {
    return encrypter.encryptCustom(dataToEncrypt);
  }

  String decrypt(String datatoDecrypt) {
    return decrypter.decryptCustom(datatoDecrypt);
  }

  String sign(String plainText) {
    return signer.signCustom(plainText);
  }

  bool verify(String plainText, String sign,) {
    return verifier.verifyCustom(plainText, sign);
  }
}

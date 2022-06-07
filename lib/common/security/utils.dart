part of encrypt;

Uint8List decodeHexString(String input) {
  assert(input.length % 2 == 0, 'Input needs to be an even length.');

  return Uint8List.fromList(
    List.generate(
      input.length ~/ 2,
      (i) => int.parse(input.substring(i * 2, (i * 2) + 2), radix: 16),
    ).toList(),
  );
}

AsymmetricKeyPair<RSAPublicKey, RSAPrivateKey> generateRSAkeyPair(
    PointyCastleAPI.SecureRandom secureRandom,
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

PointyCastleAPI.SecureRandom exampleSecureRandom() {
  final secureRandom = FortunaRandom();

  final seedSource = Random.secure();
  final seeds = <int>[];
  for (int i = 0; i < 32; i++) {
    seeds.add(seedSource.nextInt(255));
  }
  secureRandom.seed(KeyParameter(Uint8List.fromList(seeds)));

  return secureRandom;
}

String encodePublicKeyToPem(RSAPublicKey publicKey) {
  var algorithmSeq = new ASN1Sequence();
  var algorithmAsn1Obj = new ASN1Object.fromBytes(Uint8List.fromList([0x6, 0x9, 0x2a, 0x86, 0x48, 0x86, 0xf7, 0xd, 0x1, 0x1, 0x1]));
  var paramsAsn1Obj = new ASN1Object.fromBytes(Uint8List.fromList([0x5, 0x0]));
  algorithmSeq.add(algorithmAsn1Obj);
  algorithmSeq.add(paramsAsn1Obj);

  var publicKeySeq = new ASN1Sequence();
  publicKeySeq.add(ASN1Integer(publicKey.modulus!));
  publicKeySeq.add(ASN1Integer(publicKey.exponent!));
  var publicKeySeqBitString = new ASN1BitString(Uint8List.fromList(publicKeySeq.encodedBytes));

  var topLevelSeq = new ASN1Sequence();
  topLevelSeq.add(algorithmSeq);
  topLevelSeq.add(publicKeySeqBitString);
  var dataBase64 = convert.base64Encode(topLevelSeq.encodedBytes);

  return """-----BEGIN PUBLIC KEY-----\r\n$dataBase64\r\n-----END PUBLIC KEY-----""";
}

String encodePrivateKeyToPem(RSAPrivateKey privateKey) {
  var version = ASN1Integer(BigInt.from(0));

  var algorithmSeq = new ASN1Sequence();
  var algorithmAsn1Obj = new ASN1Object.fromBytes(Uint8List.fromList([0x6, 0x9, 0x2a, 0x86, 0x48, 0x86, 0xf7, 0xd, 0x1, 0x1, 0x1]));
  var paramsAsn1Obj = new ASN1Object.fromBytes(Uint8List.fromList([0x5, 0x0]));
  algorithmSeq.add(algorithmAsn1Obj);
  algorithmSeq.add(paramsAsn1Obj);

  var privateKeySeq = new ASN1Sequence();
  var modulus = ASN1Integer(privateKey.n!);
  var publicExponent = ASN1Integer(BigInt.parse('65537'));
  var privateExponent = ASN1Integer(privateKey.privateExponent!);
  var p = ASN1Integer(privateKey.p!);
  var q = ASN1Integer(privateKey.q!);
  var dP = privateKey.privateExponent! % (privateKey.p! - BigInt.from(1));
  var exp1 = ASN1Integer(dP);
  var dQ = privateKey.privateExponent! % (privateKey.q! - BigInt.from(1));
  var exp2 = ASN1Integer(dQ);
  var iQ = privateKey.q!.modInverse(privateKey.p!);
  var co = ASN1Integer(iQ);

  privateKeySeq.add(version);
  privateKeySeq.add(modulus);
  privateKeySeq.add(publicExponent);
  privateKeySeq.add(privateExponent);
  privateKeySeq.add(p);
  privateKeySeq.add(q);
  privateKeySeq.add(exp1);
  privateKeySeq.add(exp2);
  privateKeySeq.add(co);
  var publicKeySeqOctetString = new ASN1OctetString(Uint8List.fromList(privateKeySeq.encodedBytes));

  var topLevelSeq = new ASN1Sequence();
  topLevelSeq.add(version);
  topLevelSeq.add(algorithmSeq);
  topLevelSeq.add(publicKeySeqOctetString);
  var dataBase64 = convert.base64Encode(topLevelSeq.encodedBytes);

  return """-----BEGIN PRIVATE KEY-----\r\n$dataBase64\r\n-----END PRIVATE KEY-----""";
}


void writeToKeyFile(String key, String path) {
  File(path).createSync(recursive: true);
  File file = File(path);
  file.writeAsStringSync(key);
}

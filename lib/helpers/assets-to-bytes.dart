import 'dart:ui';

import 'package:flutter/services.dart';

Future<Uint8List> assetToBytes(String path, {int width = 100}) async {
  final byteData = await rootBundle.load(path);
  final byte = byteData.buffer.asUint8List();
  final codec = await instantiateImageCodec(byte, targetHeight: width);
  final frame = await codec.getNextFrame();
  final newByteData = await frame.image.toByteData(format: ImageByteFormat.png);
  return newByteData!.buffer.asUint8List();
}

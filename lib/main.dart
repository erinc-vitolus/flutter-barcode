import 'dart:async';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

Future<void> main() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();

  FlutterBarcodeScanner.getBarcodeStreamReceiver(
    "#ff6666",
    "Cancel",
    false,
    ScanMode.BARCODE,
  )?.listen((barcode) {
    print('Barcode Scanned: $barcode');
  });
}

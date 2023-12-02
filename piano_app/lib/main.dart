import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:piano_app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  /// горизонталь распол устр
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);
  runApp(const MyApp());
}

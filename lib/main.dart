import 'package:book_app/constants.dart';
import 'package:book_app/features/splash/presentation/views/splash_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const BookApp(), ));
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context), // Simulate locale
      builder: DevicePreview.appBuilder, // Apply device preview
      home: const SplashView(),
    );
  }
}

import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const BookApp(), ));
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context), // Simulate locale
      builder: DevicePreview.appBuilder, // Apply device preview
    );
  }
}

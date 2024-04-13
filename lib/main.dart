import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:yandexmusic/app/data/services/sound_player_service.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

Future<void> initServices() async {
  Get.put(SoundPlayer());
}
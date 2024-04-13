import 'package:get/get.dart';

import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import '../modules/music/music_binding.dart';
import '../modules/music/music_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MUSIC,
      page: () => const MusicView(),
      binding: MusicBinding(),
    ),
  ];
}

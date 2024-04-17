import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:yandexmusic/app/data/services/music_player_service.dart';
import 'package:yandexmusic/app/data/services/sound_player_service.dart';
import 'package:yandexmusic/app/data/static/colors.dart';
import 'package:yandexmusic/app/routes/app_pages.dart';

class HomeController extends GetxController {
  final _soundPlayer = Get.find<SoundPlayer>();
  final _musicPlayer = Get.find<MusicPlayer>();

  SoundPlayer get soundPlayer => _soundPlayer;
  MusicPlayer get musicPlayer => _musicPlayer;

  @override
  void onInit() {
    super.onInit();
    _musicPlayer.reloadAvailableMusic();
  }

  void openMusic() async {
    if (!_musicPlayer.isMusicLoaded) return;
    Color domCol = await ColorManager.getDominantColorFromImage(Image.network(_musicPlayer.curMusicImage ?? ""));
    Get.toNamed(Routes.MUSIC, arguments: domCol);
  }
}

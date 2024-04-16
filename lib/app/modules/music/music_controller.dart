import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:yandexmusic/app/data/services/music_player_service.dart';
import 'package:yandexmusic/app/data/services/sound_player_service.dart';

class MusicController extends GetxController {
  final _soundPlayer = Get.find<SoundPlayer>();
  final _musicPlayer = Get.find<MusicPlayer>();

  late final PageController _musicImageController;

  SoundPlayer get soundPlayer => _soundPlayer;
  MusicPlayer get musicPlayer => _musicPlayer;

  PageController get musicImgCtrl => _musicImageController;

  @override
  void onInit() {
    super.onInit();
    _musicImageController = PageController(initialPage: _musicPlayer.curMusicId() ?? 0, keepPage: false, viewportFraction: 0.8);
  }

  void changeMusicVisualy(bool isNext) {
    int? index = _musicPlayer.curMusicId();
    if (index == null) return;

    isNext ? index++ : index--;

    if (index > _musicPlayer.loadedMusic.length - 1) return;
    if (index < 0) return;

    _musicImageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }
}

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:yandexmusic/app/data/services/music_player_service.dart';
import 'package:yandexmusic/app/data/services/sound_player_service.dart';
import 'package:yandexmusic/app/data/static/colors.dart';

class MusicController extends GetxController {
  final _soundPlayer = Get.find<SoundPlayer>();
  final _musicPlayer = Get.find<MusicPlayer>();

 //цвет
  late final Rx<Color> _bgColor;

  late final PageController _musicImageController;

  SoundPlayer get soundPlayer => _soundPlayer;
  MusicPlayer get musicPlayer => _musicPlayer;

  PageController get musicImgCtrl => _musicImageController;

  //  
  Color get bgColor => _bgColor.value;

  @override
  void onInit() {
    super.onInit();
    //
    _bgColor = Rx(Get.arguments ?? AppColors.grayOnMusic);
    _musicImageController = PageController(initialPage: _musicPlayer.curMusicId() ?? 0, keepPage: false, viewportFraction: 0.8);
  }
 //
  void updateBgColor() async {
    Color domCol = await ColorManager.getDominantColorFromImage(Image.network(_musicPlayer.curMusicImage ?? ""));
    _bgColor.value = domCol;
  }

  void changeMusic(int index) async {
    await _musicPlayer.changePlayingMusicByIndex(index);
    updateBgColor();
  }

  void changeMusicVisualy(bool isNext) async {
    int? index = _musicPlayer.curMusicId();
    if (index == null) return;

    isNext ? index++ : index--;

    if (index > _musicPlayer.loadedMusic.length - 1) return;
    if (index < 0) return;

    await _musicImageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
    updateBgColor();
  }
}

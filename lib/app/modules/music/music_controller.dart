import 'package:get/get.dart';
import 'package:yandexmusic/app/data/services/sound_player_service.dart';

class MusicController extends GetxController {
  final _soundPlayer = Get.find<SoundPlayer>();

  double get sliderValue => _soundPlayer.getSliderInfo;

  bool get canResume => _soundPlayer.canResume;
  bool get canPause => _soundPlayer.canPause;

  String get curPlayTime => _soundPlayer.positionText;

  Future<void> changeSource() async {
    _soundPlayer.changeSource(
        "https://t4.bcbits.com/stream/7cc981ead8a38906d363568c2f135b14/mp3-128/2473821881?p=0&ts=1713029753&t=45e3c3578d413eb5fcfcb59ce685dda624decf48&token=1713029753_6e4e052d87e24355c69d025f3800ec6918694d0d");
  }

  void changePlayTime(double playTime) => _soundPlayer.seek(playTime);

  Future<void> pause() async => _soundPlayer.pause();

  Future<void> play() async => _soundPlayer.play();

  Future<void> resume() async => _soundPlayer.resume();
}

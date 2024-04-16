import 'package:get/get.dart';
import 'package:yandexmusic/app/data/models/music_info/music_info.dart';
import 'package:yandexmusic/app/data/services/music_api_service.dart';
import 'package:yandexmusic/app/data/services/sound_player_service.dart';

class MusicPlayer extends GetxService {
  final _soundPlayer = Get.find<SoundPlayer>();
  final _musicService = Get.find<MusicApiService>();

  final _curMusic = Rx<MusicInfo?>(null);

  final _loadedMusic = <MusicInfo>[].obs;

  List<MusicInfo> get loadedMusic => _loadedMusic;

  String? get curMusicImage => _curMusic.value?.imageUrl;
  String get curMusicAuthor => _curMusic.value?.author ?? "Или найдите новинку в плейлист";
  String get curMusicName => _curMusic.value?.name ?? "Выберите музыку";

  String? musicImageByIndex(int index) {
    if (index > _loadedMusic.length - 1) index = 0;
    if (index < 0) index = _loadedMusic.length - 1;
    return _loadedMusic[index].imageUrl;
  }

  int? curMusicId() {
    int index = _loadedMusic.indexOf(_curMusic.value);
    return index >= 0 ? index : null;
  }

  Future<void> reloadAvailableMusic() async {
    _loadedMusic.value = await _musicService.getMusic();
  }

  Future<void> changePlayingMusicByIndex(int index) async {
    if (index > _loadedMusic.length - 1) index = 0;
    if (index < 0) index = _loadedMusic.length - 1;
    changePlayingMusic(_loadedMusic[index]);
  }

  Future<void> changePlayingMusic(MusicInfo musicInfo) async {
    _curMusic.value = musicInfo;
    _soundPlayer.changeMusic(musicInfo);
  }

  Future<void> nextMusic() async {
    int index = _loadedMusic.indexOf(_curMusic.value);
    if (index == -1) return;
    if (index + 1 > _loadedMusic.length - 1) index = 0;
    changePlayingMusic(_loadedMusic[index + 1]);
  }

  Future<void> previousMusic() async {
    int index = _loadedMusic.indexOf(_curMusic.value);
    if (index == -1) return;
    if (index - 1 < 0) index = _loadedMusic.length - 1;
    changePlayingMusic(_loadedMusic[index - 1]);
  }
}

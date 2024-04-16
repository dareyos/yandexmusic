import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:yandexmusic/app/data/models/music_info/music_info.dart';

class SoundPlayer extends GetxService {
  late AudioPlayer _player;
  late Rx<PlayerState?> _playerState;
  late Rx<Duration?> _duration;
  late Rx<Duration?> _position;

  PlayerState? get playerState => _playerState.value;
  Duration? get duration => _duration.value;
  Duration? get position => _position.value;

  String get positionText => _position.value?.toString().split(".").first ?? "0:00:00";
  String get durationText => _duration.value?.toString().split(".").first ?? "0:00:00";

  bool get isAvailable => _playerState.value == PlayerState.paused || _playerState.value == PlayerState.stopped;
  bool get canResume => _playerState.value == PlayerState.paused || _playerState.value == PlayerState.playing;
  bool get canPause => _playerState.value == PlayerState.playing;

  @override
  void onInit() {
    super.onInit();
    
    _player = AudioPlayer();
    _playerState = Rx<PlayerState?>(null);
    _duration = Rx<Duration?>(null);
    _position = Rx<Duration?>(null);

    _initAudioPlayer();
  }

  void _initAudioPlayer() async {
    _player.setReleaseMode(ReleaseMode.stop);

    _player.onDurationChanged.listen((duration) {
      _duration.value = duration;
    });

    _player.onPositionChanged.listen((position) {
      _position.value = position;
    });

    _player.onPlayerStateChanged.listen((state) {
      _playerState.value = state;
    });

    _player.onPlayerComplete.listen((event) {
      _playerState.value = PlayerState.stopped;
      _position.value = Duration.zero;
    });
  }

  Future<void> changeMusic(MusicInfo info) async {
    await _changeSource(info.url);
  }

  Future<void> _changeSource(String musicUrl) async {
    await stop();
    try {
      await _player.setSource(UrlSource(musicUrl));
    } on AudioPlayerException {
      Get.snackbar("ОШИБКА", "Не удалось включить музыку");
    }
    await _player.resume();
  }

  Future<void> resume() async {
    if (!canResume) return;
    if (canPause) {
      pause();
    } else {
      play();
    }
  }

  Future<void> play() async {
    await _player.resume();
    _playerState.value = PlayerState.playing;
  }

  Future<void> pause() async {
    await _player.pause();
    _playerState.value = PlayerState.paused;
  }

  Future<void> stop() async {
    await _player.stop();
    _playerState.value = PlayerState.stopped;
    _position.value = Duration.zero;
  }

  void seek(double value) {
    final duration = _duration.value;
    if (duration == null) return;
    final position = value * duration.inMilliseconds;
    _player.seek(Duration(milliseconds: position.round()));
  }

  double get getSliderInfo => (_position.value != null && _duration.value != null && _position.value!.inMilliseconds > 0 && _position.value!.inMilliseconds < _duration.value!.inMilliseconds)
      ? _position.value!.inMilliseconds / _duration.value!.inMilliseconds
      : 0.0;
}

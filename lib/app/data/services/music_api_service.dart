import 'dart:math';

import 'package:get/get.dart';
import 'package:yandexmusic/app/data/models/music_info/music_info.dart';

class MusicApiService extends GetxService {
  final List<MusicInfo> _fakeMusic = [
    MusicInfo(
      name: "Disowned",
      author: "INOVA",
      url: "https://rus.hitmotop.com/get/music/20190627/INOVA_-_Disowned_65246363.mp3",
      imageUrl: "https://avatars.yandex.net/get-music-content/2433207/456ecb5c.a.11899877-1/m1000x1000",
    ),
    MusicInfo(
      name: "Canon",
      author: "OVERWERK",
      url: "https://rus.hitmotop.com/get/cuts/6e/b1/6eb1d9b893dd02965a0f37c2323bd6aa/52716393/OVERWERK_-_Canon_b128f0d298.mp3",
      imageUrl: "https://avatars.yandex.net/get-music-content/34131/80362718.a.3048644-1/m1000x1000",
    ),
    MusicInfo(
      name: "Плохая девочка",
      author: "Винтаж",
      url: "https://rus.hitmotop.com/get/cuts/26/48/2648bd3581ed7d5863e956877b352bd4/47838212/Vintazh_-_Plokhaya_devochka_b128f0d214.mp3",
      imageUrl: "https://avatars.yandex.net/get-music-content/193823/1254c059.a.57316-2/m1000x1000",
    ),
    MusicInfo(
      name: "Shadow",
      author: "Triplo Max",
      url: "https://rus.hitmotop.com/get/cuts/e2/07/e2075da6dae07d346520c72c1922961c/60838094/Triplo_Max_-_Shadow_b128f0d177.mp3",
      imageUrl: "https://avatars.yandex.net/get-music-content/142001/48656386.a.6103179-1/m1000x1000",
    ),
    MusicInfo(
      name: "A Dramatic Irony",
      author: "HOYO-MiX, 文驰",
      url: "https://rus.hitmotop.com/get/music/20231029/HOYO-MiX_Antonio_Vivaldi_-_A_Dramatic_Irony_76908747.mp3",
      imageUrl: "https://avatars.yandex.net/get-music-content/9837405/b19a94e9.a.27942248-1/m1000x1000",
    ),
    MusicInfo(
      name: "Cyberangel",
      author: "HOYO-MiX, hanser",
      url: "https://cdn10.deliciouspeaches.com/get/music/20191224/HOYO-MIX_Hanser_-_Cyberangel_67724639.mp3",
      imageUrl: "https://avatars.yandex.net/get-music-content/4010467/2de0b6ed.a.8011183-2/m1000x1000",
    ),
    MusicInfo(
      name: "Samudrartha",
      author: "HOYO-MiX, 优素, 宫奇",
      url: "https://rus.hitmotop.com/get/music/20230721/Honkai_Star_Rail_-_Samudrartha_Dan_Heng_IL_Theme_76392897.mp3",
      imageUrl: "https://avatars.yandex.net/get-music-content/5878680/4c27e877.a.26689493-1/m1000x1000",
    ),
    MusicInfo(
      name: "Inferno",
      author: "Mrs. GREEN APPLE",
      url: "https://rus.hitmotop.com/get/cuts/e4/26/e42613ce348a8c5cb6eb52add2efb1cc/70237843/Mrs_GREEN_APPLE_-_Inferno_b128f0d216.mp3",
      imageUrl: "https://avatars.yandex.net/get-music-content/98892/2eb74aad.a.8858598-1/m1000x1000",
    ),
    // MusicInfo(
    //   name: "La vaguelette",
    //   author: "HOYO-MiX, Cécilia Cara",
    //   url: "https://rus.hitmotop.com/get/music/20231114/HOYO-MiX_-_La_vaguelette_76950554.mp3",
    //   imageUrl: "https://avatars.yandex.net/get-music-content/10641165/ddf75c41.a.28108950-1/m1000x1000",
    // ),
    MusicInfo(
      name: "Leel Lost (Reloaded)",
      author: "Relanium, Deen West",
      url: "https://rus.hitmotop.com/get/cuts/36/97/3697955dd3f7b3a8d00a2b4c770d0fdf/73876183/Relanium_Deen_West_-_Leel_Lost_Reloaded_b128f0d189.mp3",
      imageUrl: "https://avatars.yandex.net/get-music-content/2358262/12d1249a.a.10060290-1/m1000x1000",
    ),
    MusicInfo(
      name: "Colors",
      author: "Flow",
      url: "https://rus.hitmotop.com/get/cuts/8e/4d/8e4d4f77efec7cebb2768caa14e8438f/57068074/Flow_-_Colors_b128f0d219.mp3",
      imageUrl: "https://i.scdn.co/image/ab67616d0000b273d9886ea13cc40aa184d53bd3",
    ),
  ];

  Future<List<MusicInfo>> getMusic() async {
    await _randomDelay();
    _fakeMusic.shuffle();
    return _fakeMusic;
  }

  Future<void> _randomDelay() async {
    var random = Random().nextInt(2000);
    return Future.delayed(Duration(milliseconds: random));
  }
}

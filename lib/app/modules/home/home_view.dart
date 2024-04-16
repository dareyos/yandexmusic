import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:yandexmusic/app/data/models/music_info/music_info.dart';
import 'package:yandexmusic/app/data/static/colors.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildCollectionButton(),
            _buildLikedMusicSection(),
            _buildAdditionalCollection(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Padding _buildAdditionalCollection() {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16.0, bottom: 2.0, top: 42),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ещё у вас в Kоллекции',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: Get.width * 0.44,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.bottom,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Плейлисты',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Мне нравится',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppColors.lightGray,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network('https://music.yandex.ru/blocks/playlist-cover/playlist-cover_like.png'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width * 0.44,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.bottom,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Альбомы',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.all(4),
                            height: 50,
                            width: 50,
                            child: Image.asset('assets/images/albums.JPEG'),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: Get.width * 0.44,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.bottom,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Аудиокниги',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.all(4),
                            height: 50,
                            width: 50,
                            child: Image.asset('assets/images/audiobooks.JPEG'),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width * 0.44,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.bottom,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Подкасты',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.all(4),
                            height: 50,
                            width: 50,
                            child: Image.asset('assets/images/podcast.JPEG'),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: Get.width * 0.44,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.bottom,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Детям',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.all(4),
                            height: 50,
                            width: 50,
                            child: Image.asset('assets/images/kids.JPEG'),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width * 0.44,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.bottom,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Скачанное',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.all(4),
                            height: 50,
                            width: 50,
                            child: Image.asset('assets/images/downloads.JPEG'),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildLikedMusicSection() {
    return Column(
      children: [
        _buildLikedRow(),
        _buildLikedMusic(),
      ],
    );
  }

  Widget _buildLikedMusic() {
    double musicTileHeight = 50;
    return Obx(
      () => Padding(
        padding: const EdgeInsets.only(left: 8),
        child: SizedBox(
          height: musicTileHeight * 3.5,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.musicPlayer.loadedMusic.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: (musicTileHeight / (Get.width * 0.75)),
            ),
            itemBuilder: (context, index) {
              MusicInfo thisMusic = controller.musicPlayer.loadedMusic[index];
              return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: GestureDetector(
                    onTap: () => controller.musicPlayer.changePlayingMusic(thisMusic),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: thisMusic.imageUrl == null
                          ? null
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                thisMusic.imageUrl ?? "",
                              ),
                            ),
                      title: Text(
                        thisMusic.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        thisMusic.author,
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.lightGray,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz,
                            color: AppColors.lightGray,
                          )),
                    ),
                  ));
            },
          ),
        ),
      ),
    );
  }

  Widget _buildLikedRow() {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Мне нравится',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '${controller.musicPlayer.loadedMusic.length} треков',
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.lightGray,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: const Row(
                  children: [
                    Text(
                      'Всё',
                      style: TextStyle(
                        color: AppColors.lightGray,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: AppColors.lightGray,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Widget _buildCollectionButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 55,
        width: Get.width * 0.9,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            backgroundColor: AppColors.pink,
          ),
          onPressed: () {},
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Моя волна по разделу',
                style: TextStyle(fontSize: 12, color: AppColors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.play_arrow,
                    color: AppColors.white,
                    size: 16,
                  ),
                  Text(
                    'Коллекция',
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildBottomBar() {
    return Container(
      height: 135,
      decoration: const BoxDecoration(
        color: AppColors.bottom,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          _buildBottomMusicPlayer(),
          _bottomBarButtons(),
        ],
      ),
    );
  }

  Widget _buildBottomMusicPlayer() {
    return Card(
      margin: const EdgeInsets.all(8),
      color: AppColors.backMusic,
      elevation: 0,
      child: Obx(
        () => ListTile(
          onTap: () => controller.openMusic(),
          contentPadding: const EdgeInsets.only(
            left: 8,
          ),
          leading: controller.musicPlayer.curMusicImage == null
              ? null
              : ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    controller.musicPlayer.curMusicImage ?? "",
                    height: 35,
                    width: 35,
                  ),
                ),
          title: Text(
            controller.musicPlayer.curMusicName,
            style: const TextStyle(
              fontSize: 12,
              color: AppColors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: Text(
            controller.musicPlayer.curMusicAuthor,
            style: const TextStyle(
              fontSize: 12,
              color: AppColors.lightGray,
              fontWeight: FontWeight.w700,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 22,
                ),
              ),
              IconButton(
                onPressed: () => controller.soundPlayer.resume(),
                icon: Icon(
                  controller.soundPlayer.isAvailable ? Icons.play_arrow : Icons.pause,
                  color: AppColors.black,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomBarButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.double_music_note,
            color: AppColors.lightGray,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.book,
            color: AppColors.lightGray,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.square_favorites_alt,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColors.bottom,
      title: const Text(
        'Коллекция',
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.person_outline_outlined,
          color: AppColors.black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}

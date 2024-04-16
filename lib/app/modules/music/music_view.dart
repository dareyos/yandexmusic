import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:yandexmusic/app/data/static/colors.dart';
import 'music_controller.dart';

class MusicView extends GetView<MusicController> {
  const MusicView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: AppColors.grayOnMusic,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildMusicImage(),
            _buildArtistRow(),
            _buildMusicSlider(),
            _buildActionButtons(),
            _buildBottomButtons(),
          ],
        ),
      ),
    );
  }

  Obx _buildActionButtons() {
    return Obx(() => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                iconSize: 24.0,
                icon: const Icon(Icons.heart_broken_outlined),
                color: AppColors.grayOnMusicText,
              ),
              const SizedBox(width: 25),
              IconButton(
                onPressed: () => controller.changeMusicVisualy(false),
                iconSize: 38.0,
                icon: const Icon(Icons.skip_previous),
                color: AppColors.white,
              ),
              IconButton(
                onPressed: controller.soundPlayer.resume,
                iconSize: 64.0,
                icon: Icon(controller.soundPlayer.isAvailable ? Icons.play_circle : Icons.pause_circle),
                color: AppColors.white,
              ),
              IconButton(
                onPressed: () => controller.changeMusicVisualy(true),
                iconSize: 38.0,
                icon: const Icon(Icons.skip_next),
                color: AppColors.white,
              ),
              const SizedBox(width: 25),
              IconButton(
                onPressed: () {},
                iconSize: 24.0,
                icon: const Icon(Icons.favorite),
                color: AppColors.grayOnMusicText,
              ),
            ],
          ),
        ));
  }

  Widget _buildMusicSlider() {
    return Obx(
      () => Column(
        children: [
          SizedBox(
            width: Get.width * 0.9,
            child: SliderTheme(
              data: SliderTheme.of(Get.context!).copyWith(
                overlayShape: SliderComponentShape.noOverlay,
                thumbShape: const RoundSliderThumbShape(
                  enabledThumbRadius: 5,
                ),
              ),
              child: Slider(
                activeColor: AppColors.white,
                onChanged: controller.soundPlayer.seek,
                value: controller.soundPlayer.getSliderInfo,
              ),
            ),
          ),
          SizedBox(
            width: Get.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  controller.soundPlayer.positionText,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.grayOnMusicText,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  controller.soundPlayer.durationText,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.grayOnMusicText,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            iconSize: 24.0,
            icon: const Icon(Icons.replay_rounded),
            color: AppColors.grayOnMusicText,
          ),
          IconButton(
            onPressed: () {},
            iconSize: 24.0,
            icon: const Icon(Icons.settings_outlined),
            color: AppColors.grayOnMusicText,
          ),
          IconButton(
            onPressed: () {},
            iconSize: 24.0,
            icon: const Icon(Icons.text_fields),
            color: AppColors.grayOnMusicText,
          ),
          IconButton(
            onPressed: () {},
            iconSize: 24.0,
            icon: const Icon(Icons.timer_outlined),
            color: AppColors.grayOnMusicText,
          ),
          IconButton(
            onPressed: () {},
            iconSize: 24.0,
            icon: const Icon(Icons.question_mark),
            color: AppColors.grayOnMusicText,
          ),
        ],
      ),
    );
  }

  Padding _buildArtistRow() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(() => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.musicPlayer.curMusicName,
                    textAlign: TextAlign.start,
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppColors.white),
                  ),
                  Text(
                    controller.musicPlayer.curMusicAuthor,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.grayOnMusicText,
                    ),
                  ),
                ],
              )),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share),
                color: AppColors.grayOnMusicText,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
                color: AppColors.grayOnMusicText,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMusicImage() {
    return Obx(
      () {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SizedBox(
            height: 300,
            child: controller.musicPlayer.curMusicImage == null
                ? const Center(child: Text("Нет проигрываемой музыки"))
                : PageView.builder(
                    itemCount: controller.musicPlayer.loadedMusic.length,
                    controller: controller.musicImgCtrl,
                    onPageChanged: (index) => controller.musicPlayer.changePlayingMusicByIndex(index),
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          controller.musicPlayer.musicImageByIndex(index) ?? "",
                        ),
                      );
                    },
                  ),
          ),
        );
      },
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColors.grayOnMusic,
      title: Column(
        children: [
          const Text(
            'Сейчас играет',
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: AppColors.grayOnMusicText),
          ),
          Obx(() => Text(
                'Альбом "${controller.musicPlayer.curMusicName}"',
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.white),
              )),
        ],
      ),
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(
          Icons.keyboard_arrow_down,
          color: AppColors.grayOnMusicText,
          size: 32,
        ),
      ),
      actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.connected_tv,
                color: AppColors.grayOnMusicText,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.list,
                color: AppColors.grayOnMusicText,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

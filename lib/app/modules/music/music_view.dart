import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:yandexmusic/app/data/static/colors.dart';
import 'package:yandexmusic/app/routes/app_pages.dart';
import 'music_controller.dart';

class MusicView extends GetView<MusicController> {
  const MusicView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.grayOnMusic,
        title: const Column(
          children: [
            Text(
              'Сейчас играет',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grayOnMusicText),
            ),
            Text(
              'Альбом "Canon"',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white),
            ),
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
      ),
      body: Container(
        decoration: const BoxDecoration(color: AppColors.grayOnMusic),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 299,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Canon',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: AppColors.white),
                      ),
                      Text(
                        'OVERWERK',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.grayOnMusicText,
                        ),
                      ),
                    ],
                  ),
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
            ),
            Obx(() => Slider(
                  onChanged: controller.changePlayTime,
                  value: controller.sliderValue,
                )),
            Obx(() => Text(
                  controller.curPlayTime,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.grayOnMusicText,
                    fontWeight: FontWeight.w600,
                  ),
                )),
            Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      iconSize: 24.0,
                      icon: const Icon(Icons.heart_broken_outlined),
                      color: AppColors.grayOnMusicText,
                    ),
                    SizedBox(
                      width: 38,
                    ),
                    // IconButton(
                    //   onPressed: controller.canResume ? controller.play : null,
                    //   iconSize: 48.0,
                    //   icon: const Icon(Icons.play_arrow),
                    //   color: Colors.black,
                    // ),
                    // IconButton(
                    //   onPressed: controller.canPause ? controller.pause : null,
                    //   iconSize: 48.0,
                    //   icon: const Icon(Icons.pause),
                    //   color: Colors.black,
                    // ),
                    IconButton(
                      onPressed: () {},
                      iconSize: 38.0,
                      icon: const Icon(Icons.skip_previous),
                      color: AppColors.lightGray,
                    ),
                    IconButton(
                      onPressed: controller.resume,
                      iconSize: 64.0,
                      icon: Icon(controller.canResume
                          ? Icons.play_circle
                          : Icons.pause_circle),
                      color: AppColors.white,
                    ),
                    IconButton(
                      onPressed: controller.changeSource,
                      iconSize: 38.0,
                      icon: const Icon(Icons.skip_next),
                      color: AppColors.white,
                    ),
                    SizedBox(
                      width: 38,
                    ),
                    IconButton(
                      onPressed: () {},
                      iconSize: 24.0,
                      icon: const Icon(Icons.favorite_border),
                      color: AppColors.grayOnMusicText,
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 8),
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
                ],),
            ),
          ],
        ),
      ),
    );
  }
}

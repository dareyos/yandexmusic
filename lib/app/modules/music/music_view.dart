import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'music_controller.dart';

class MusicView extends GetView<MusicController> {
  const MusicView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MusicView'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(() => Row(
                mainAxisSize: MainAxisSize.min,
                children: [
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
                    onPressed: controller.resume,
                    iconSize: 48.0,
                    icon: Icon(controller.canResume ? Icons.play_arrow : Icons.pause),
                    color: Colors.black,
                  ),
                  IconButton(
                    onPressed: controller.changeSource,
                    iconSize: 48.0,
                    icon: const Icon(Icons.skip_next),
                    color: Colors.black,
                  ),
                ],
              )),
          Obx(() => Slider(
                onChanged: controller.changePlayTime,
                value: controller.sliderValue,
              )),
          Obx(() => Text(
                controller.curPlayTime,
                style: const TextStyle(fontSize: 20),
              )),
        ],
      ),
    );
  }
}

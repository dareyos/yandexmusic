import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:yandexmusic/app/data/static/colors.dart';
import 'package:yandexmusic/app/routes/app_pages.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text(
                'HomeView is working',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: AppColors.bottom,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: AppColors.backMusic,
                    elevation: 0,
                    child: ListTile(
                      onTap: () => Get.toNamed(Routes.MUSIC),
                      contentPadding: const EdgeInsets.only(left: 15,right: 0, bottom: 0),
                      leading: Container(
                        height: 30,
                        width: 30,
                        color: AppColors.black,
                      ),
                      title: const Text(
                        "hz",
                        style: TextStyle(),
                      ),
                      subtitle: const Text(
                        "hz",
                        style: TextStyle(color: AppColors.lightGray),
                      ),
                      trailing:
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_border_outlined,
                              color: AppColors.black,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_arrow,
                              color: AppColors.black,
                            ),
                          ),
                        ],
                     ),
                    ),
                  ),
                ),
                Row(
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
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

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
          // Expanded(
          // child:
          const SizedBox(height: 20),
          Center(
            child: SizedBox(
              height: 55,
              width: 340,
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
          ),
          // ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Мне нравится',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '89 треков',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColors.lightGray,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    width: 330,
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, innerIndex) {
                        return Container(
                          height: 50,
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Card(
                            elevation: 0,
                            child: ListTile(
                              onTap: () {},
                              contentPadding: const EdgeInsets.only(
                                top: 0,
                                left: 0,
                                right: 0,
                                bottom: 0,
                              ),
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
                              trailing: const Icon(
                                Icons.more_horiz,
                                color: AppColors.lightGray,
                              ),
                            ),
                          ),
                        );
                      },
                      scrollDirection: Axis.vertical,
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 35),
          Padding(
            padding:
                const EdgeInsets.only(right: 16.0, left: 16.0, bottom: 2.0),
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
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.bottom,
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.bottom,
                        ),
                      ),
                    ],
                  )
                ],
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
                      contentPadding: const EdgeInsets.only(
                        left: 15,
                        right: 0,
                        bottom: 0,
                      ),
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
                      trailing: Row(
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
          ),
        ],
      ),
    );
  }
}

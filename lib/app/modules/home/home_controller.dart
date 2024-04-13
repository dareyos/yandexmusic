import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:yandexmusic/app/modules/music/music_view.dart';
import 'package:yandexmusic/app/routes/app_pages.dart';

class HomeController extends GetxController {

//   Route createRoute() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => MusicView(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       var begin = Offset(0.0, 1.0); // Откуда начинается анимация (снизу)
//       var end = Offset.zero; // Куда перемещается страница (вверх)

//       var curve = Curves.easeInOutCubic; // Кривая анимации

//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//       var offsetAnimation = animation.drive(tween);

//       return SlideTransition(
//         position: offsetAnimation,
//         child: child,
//       );
//     },
//   );
// }
}

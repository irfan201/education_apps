import 'package:education_apps/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: IntroductionScreen(
                pages: [
          PageViewModel(
            title: "Belajar dengan mudah",
            body: "Kamu hanya perlu di rumah untuk belajar dengan gurumu",
            image:  SizedBox(
              width: Get.width * 0.6,
              height: Get.height * 0.6,
              child: Center(
                child: Image.network("https://i.pinimg.com/originals/92/df/9b/92df9bc81af05dba2bb22a47171f9837.png")
              ),
            ),
          ),
          PageViewModel(
            title: "Buat grup",
            body: "Buat grup dengan teman-temanmu dan mulai belajar bersama-sama",
            image:  SizedBox(
              width: Get.width * 0.6,
              height: Get.height * 0.6,
              child: Center(
                child: Image.network("https://i.pinimg.com/474x/a3/59/34/a359348434f746a519e4ccd94f25c95f.jpg")
              ),
            ),
          ),
          PageViewModel(
            title: "Aplikasi bebas biaya",
            body: "Aplikasi ini bebas biaya, kamu bisa menggunakan aplikasi ini kapan saja dan dimana saja",
            image:  SizedBox(
              width: Get.width * 0.6,
              height: Get.height * 0.6,
              child: Center(
                child: Image.network("https://w7.pngwing.com/pngs/777/1001/png-transparent-school-education-free-content-cartoon-books-s-reading-higher-education-teacher-thumbnail.png")
              ),
            ),
          ),

                ],
                showSkipButton: true,
                skip: const Text("Skip"),
                next: const Text("Next", style: TextStyle(fontWeight: FontWeight.bold)),
                done: const Text("Done", style: TextStyle(fontWeight: FontWeight.bold)),
                onDone: () {
          Get.offAllNamed(Routes.LOGIN);
                },
                dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Theme.of(context).colorScheme.secondary,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                ),
              ),
        ));
  }
}


import 'package:education_apps/app/routes/app_pages.dart';
import 'package:education_apps/app/utils/clipath_purple.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -1,
            left: -1,
            right: -1,
            child: Container(
              height: Get.height *
                  0.5, 
              child: CustomPaint(
                painter: UpperWavePainterPurple(),
              ),
            ),
          ),
          Positioned.fill(
            top: Get.height * 0.2,
            child: GridView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: 10, 
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1, 
              ),
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Judul Item $index', 
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Deskripsi Item $index', 
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 0) {
            Get.toNamed(Routes.HOME);
          } else if (index == 1) {
            Get.toNamed(Routes.SEARCH);
          } else if (index == 2) {}
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

import 'package:education_apps/app/routes/app_pages.dart';
import 'package:education_apps/app/utils/clipath_orange.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController2> {
  const SearchView({Key? key}) : super(key: key);

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
              height: Get.height * 0.5,
              child: CustomPaint(
                painter: UpperWavePainter(),
              ),
            ),
          ),
          Positioned(
            top: Get.height * 0.2,
            left: 20,
            right: 20,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search...',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              ),
            ),
          ),
          Positioned(
            child: ElevatedButton(onPressed: () {}, child: Text('Search')),
            top: Get.height * 0.28,
            left: 20,
          ),
          Positioned(
            child: Text('Lorem Ipsum'),
            top: Get.height * 0.35,
            left: 20,
          ),
          Positioned(
            top: Get.height * 0.4,
            left: 0,
            right: 0,
            bottom: 0,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListTile(
                    title: Text('Item $index'),
                    subtitle: Text('Description $index'),
                    trailing: Image.network(
                        "https://img.freepik.com/premium-psd/isolated-atom-3d-icon_77235-130.jpg"),
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

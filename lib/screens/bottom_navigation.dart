import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heat_tracker/screens/calendar/calendar.dart';
import 'package:heat_tracker/screens/learning/learning.dart';
import 'package:heat_tracker/screens/my_dogs/my_dogs.dart';
import 'package:heat_tracker/screens/profile/profile.dart';

class BottomNavigationController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key});

  final BottomNavigationController controller = BottomNavigationController();

  final screens = [
    Calendar(),
    MyDogs(),
    Learning(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.selectedIndex.value,
          children: screens,
        ),
      ),
      bottomNavigationBar: Obx(
        (() => BottomNavigationBar(
              onTap: (index) => controller.changeIndex(index),
              currentIndex: controller.selectedIndex.value,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_month), label: 'Calendar'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.rocket_launch), label: 'My Dogs'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.school), label: 'Learning'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Profile'),
              ],
            )),
      ),
    );
  }
}

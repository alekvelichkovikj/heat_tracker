import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {}

class Calendar extends StatelessWidget {
  Calendar({super.key});

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calendar"),
      ),
      body: const Center(
        child: Text('Calendar'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDogsController extends GetxController {}

class MyDogs extends StatelessWidget {
  MyDogs({super.key});

  final MyDogsController controller = Get.put(MyDogsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Dogs"),
      ),
      body: const Center(
        child: Text('My Dogs'),
      ),
    );
  }
}

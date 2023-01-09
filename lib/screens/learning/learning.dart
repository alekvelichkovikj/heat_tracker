import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearningController extends GetxController {}

class Learning extends StatelessWidget {
  Learning({super.key});

  final LearningController controller = Get.put(LearningController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learning"),
      ),
      body: const Center(
        child: Text('Learning'),
      ),
    );
  }
}

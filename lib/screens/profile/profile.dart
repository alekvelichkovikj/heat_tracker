import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {}

class Profile extends StatelessWidget {
  Profile({super.key});

  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: const Center(
        child: Text('Profile'),
      ),
    );
  }
}

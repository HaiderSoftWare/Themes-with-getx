import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../controller/app_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetBuilder(
        init: AppController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: controller.stateTheme
                  ? const Text('Dark Theme')
                  : const Text('Ligth Theme'),
              leading: IconButton(
                onPressed: () {
                  controller.changeTheme();
                },
                icon: const FaIcon(FontAwesomeIcons.moon),
              ),
            ),
          );
        },
      ),
    );
  }
}

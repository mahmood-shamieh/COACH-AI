import 'package:ai_couch/controllers/drawer_screen_controller.dart';
import 'package:ai_couch/util/Pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import '../widgets/drawer_item.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // width: double.infinity,
      child: Container(
        // height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).buttonColor,
              Theme.of(context).scaffoldBackgroundColor
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.transparent,
              margin: EdgeInsets.only(
                  top: 40,
                  left: 10,
                  bottom: MediaQuery.of(context).orientation ==
                          Orientation.landscape
                      ? 20
                      : 60),
              child: IconButton(
                onPressed: () => Scaffold.of(context).closeDrawer(),
                icon: Icon(
                  Icons.close,
                  color: Theme.of(context).shadowColor,
                  size: 28,
                ),
              ),
            ),
            GetBuilder<DrawerScreenController>(
              init: Get.put(DrawerScreenController()),
              builder: (controller) => Container(
                height:
                    MediaQuery.of(context).orientation == Orientation.landscape
                        ? MediaQuery.of(context).size.height - 110
                        : MediaQuery.of(context).size.height - 148,
                child: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      DrawerItem(
                        icon: Icons.person,
                        text: 'PROFILE',
                        navigation: () =>
                            controller.swichPage(page: Pages.ProfilePage),
                        selected: Pages.ProfilePage == controller.currentPage,
                      ),
                      DrawerItem(
                        icon: Icons.home,
                        text: 'Home',
                        navigation: () =>
                            controller.swichPage(page: Pages.HomePage),
                        selected: Pages.HomePage == controller.currentPage,
                      ),
                      DrawerItem(
                        icon: Icons.exit_to_app,
                        text: 'SIGN OUT',
                        navigation: () =>
                            controller.swichPage(page: Pages.SignOut),
                        selected: Pages.SignOut == controller.currentPage,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // color: Colors.amber,
    );
  }
}

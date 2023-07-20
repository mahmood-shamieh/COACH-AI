import 'package:ai_couch/util/Pages.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DrawerScreenController extends GetxController {
  var currentPage = Pages.HomePage;

  void swichPage({required Pages page}) {
    currentPage = page;
    update();
  }
}

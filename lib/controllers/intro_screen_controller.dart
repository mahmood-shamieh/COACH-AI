import 'package:ai_couch/screens/scaffold_widget.dart';
import 'package:get/get.dart';

class IntroScreenController extends GetxController {
  RxBool loading = true.obs;
  @override
  void onInit() async {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        loading.value = false;
        update();
      },
    );

    super.onInit();
  }
}

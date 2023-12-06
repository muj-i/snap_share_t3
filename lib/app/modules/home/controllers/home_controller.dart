import 'package:get/get.dart';
import 'package:snap_share_t3/app/modules/home/models/home_screen_model.dart';

class HomeController extends GetxController {
  Rx<HomeScreenModel> homeScreenModelObj = HomeScreenModel().obs;
}

import 'package:get/get.dart';
import 'package:snap_share_t3/app/common/utils/image_constant.dart';
import 'package:snap_share_t3/app/modules/home/models/home_screen_item_model.dart';

class HomeScreenModel {
  Rx<List<HomeScreenItemModel>> homeScreenItemList = Rx([
    HomeScreenItemModel(
      yourAvatar: ImageConstant.imgAvatar.obs,
      iconAdd: IconConstant.iconAdd.obs,
      userName: 'You'.obs,
    ),
    HomeScreenItemModel(
      yourAvatar: ImageConstant.imgRectangle178_128x96.obs,
      userName: "Kathryn".obs,
      iconAdd: null,
    ),
    HomeScreenItemModel(
      yourAvatar: ImageConstant.imgRectangle1781.obs,
      userName: "Annette".obs,
      iconAdd: null,
    ),
    HomeScreenItemModel(
      yourAvatar: ImageConstant.imgRectangle1782.obs,
      userName: "Floyd Miles".obs,
      iconAdd: null,
    ),
    HomeScreenItemModel(
      yourAvatar: ImageConstant.imgRectangle1783.obs,
      userName: "Watson".obs,
      iconAdd: null,
    )
  ]);
}

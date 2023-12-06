import 'package:get/get.dart';
import 'package:snap_share_t3/app/common/utils/image_constant.dart';

class HomeScreenItemModel {
  HomeScreenItemModel({
    this.yourAvatar,
    this.iconAdd,
    this.userName,
    this.id,
  }) {
    yourAvatar = yourAvatar ?? Rx(ImageConstant.imgAvatar);
    iconAdd = iconAdd ?? Rx(IconConstant.iconAdd);
    userName = userName ?? Rx('You');
    id = id ?? Rx('');
  }

  Rx<String>? yourAvatar;

  Rx<String>? iconAdd;
  Rx<String>? userName;
  Rx<String>? id;
}

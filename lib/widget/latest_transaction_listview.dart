import 'package:flutter/material.dart';
import 'package:responsive_ui/model/user_info_model.dart';
import 'package:responsive_ui/utils/App_images.dart';
import 'package:responsive_ui/widget/user_info_list_tile.dart';

class LatestTransactionListview extends StatelessWidget {
  const LatestTransactionListview({super.key});
  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subTitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTile(userInfoModel: e),
              ),
            )
            .toList(),
      ),
    );

    // SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (BuildContext context, int index) {
    //       return IntrinsicWidth(
    //           child: UserInfoListTile(userInfoModel: items[index]));
    //     },
    //   ),
    // );
  }
}

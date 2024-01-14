import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_title.dart';

import '../../generated/assets.dart';
import '../../models/user_info_model.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static  List<UserInfoModel> item = [
    UserInfoModel(image: Assets.imagesFrame1, title: 'Madrani Andi', subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(image: Assets.imagesFrame2, title: 'Josua Nunito', subTitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(image: Assets.imagesFrame1, title: 'Madrani Andi', subTitle: 'Madraniadi20@gmail'),

  ]  ;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: item.map((e) => IntrinsicWidth(child: UserInfoListTitle(userInfoModel: e))).toList(),
      ),
    ) ;
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: item.length,
        itemBuilder: (BuildContext context , index) {
          return IntrinsicWidth(child: UserInfoListTitle(userInfoModel: item[index]));
        },
      ),
    );
  }
}

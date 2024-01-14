import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/views/widgets/active_inactive_item.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_title.dart';

import '../../generated/assets.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static UserInfoModel userInfoModel = UserInfoModel(
      image: Assets.imagesFrame,
      title: 'Lekan Okeowo',
      subTitle: 'demo@gmail.com');
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTitle(
              userInfoModel: userInfoModel,
               ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),

          const DrawerItemListView(),

          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                    drawerItemModel:
                    DrawerItemModel(title: 'Setting system', image: Assets.imagesSettingSystem)),
                InActiveDrawerItem(
                    drawerItemModel:
                    DrawerItemModel(title: 'Logout account', image: Assets.imagesLogoutAccount)),

                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

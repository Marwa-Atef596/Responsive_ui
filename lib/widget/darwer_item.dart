import 'package:flutter/material.dart';
import 'package:responsive_ui/model/drawer_item_model.dart';

import 'inactive&active_darwer.dart';

class DarwerItem extends StatelessWidget {
  const DarwerItem(
      {super.key, required this.drawerItemModel, required this.isSelected});
  final DrawerItemModel drawerItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : inActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

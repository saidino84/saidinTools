List<DrawerItemModel> draweritem = [
  DrawerItemModel('assets/icons/menu_dashbord.svg', 'Dashboard'),
  DrawerItemModel('assets/icons/menu_profile.svg', 'Profile'),
  DrawerItemModel('assets/icons/menu_tran.svg', 'Transaction'),
  DrawerItemModel('assets/icons/menu_task.svg', 'Tasks'),
  DrawerItemModel('assets/icons/menu_doc.svg', 'Documents'),
  DrawerItemModel('assets/icons/menu_store.svg', 'Store'),
  DrawerItemModel('assets/icons/menu_notification.svg', 'Notification'),
  DrawerItemModel('assets/icons/menu_setting.svg', 'Settings'),
];

class DrawerItemModel {
  final String svg_ic, title;

  DrawerItemModel(this.svg_ic, this.title);
}

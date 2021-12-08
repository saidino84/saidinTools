import 'package:saidino_admin/app/ui/drawer/components/drawer_data.dart';
import 'package:saidino_admin/shared.dart';

import 'components/drawer_list_tile.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                'assets/images/saidin_ic.png',
                width: 50,
                height: 50,
              ),
            ),
            DrawerListTile(
              onPress: () {},
              svg_uri: draweritem[0].svg_ic,
              title: draweritem[0].title,
            ),
            DrawerListTile(
              onPress: () {},
              svg_uri: draweritem[1].svg_ic,
              title: draweritem[1].title,
            ),
            DrawerListTile(
              onPress: () {},
              svg_uri: draweritem[2].svg_ic,
              title: draweritem[2].title,
            ),
            DrawerListTile(
              onPress: () {},
              svg_uri: draweritem[3].svg_ic,
              title: draweritem[3].title,
            ),
            DrawerListTile(
              onPress: () {},
              svg_uri: draweritem[4].svg_ic,
              title: draweritem[4].title,
            ),
            DrawerListTile(
              onPress: () {},
              svg_uri: draweritem[5].svg_ic,
              title: draweritem[5].title,
            ),
            DrawerListTile(
              onPress: () {},
              svg_uri: draweritem[6].svg_ic,
              title: draweritem[6].title,
            ),
            DrawerListTile(
              onPress: () {},
              svg_uri: draweritem[7].svg_ic,
              title: draweritem[7].title,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:saidino_tools/responsivo.dart';

import 'app/ui/ecommercy/componets/description.dart';
import 'app/ui/ecommercy/list_items.dart';
import 'app/ui/global_widgest/app_drawer.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: ResponsiveLayout(
        android: EcommerceItems(),
        tablet: Row(
          children: [
            Expanded(flex: _size.width < 900 ? 5 : 4, child: EcommerceItems()),
            Expanded(
              flex: _size.width < 900 ? 5 : 6,
              child: EcmmerceItemDescription(),
            ),
          ],
        ),
        desktop: Row(
          children: [
            Expanded(
              flex: _size.width > 1340 ? 3 : 5,
              child: EcommerceItems(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 7 : 10,
              child: EcmmerceItemDescription(),
            ),
            Expanded(
              flex: _size.width > 1240 ? 2 : 4,
              child: AppDrawer(),
            )
          ],
        ),
      ),
    );
  }
}

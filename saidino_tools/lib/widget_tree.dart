import 'package:flutter/material.dart';
import 'package:saidino_tools/app/ui/responsivo.dart';

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
            Expanded(flex: _size.width < 900 ? 5 : 4, child: EcommereItems()),
            Expanded(
              flex: _size.width < 900 ? 5 : 6,
              child: ECommerceItemDescription(),
            ),
          ],
        ),
        desktop: Row(
          children: [
            Expanded(
              flex: _size.width > 1340 ? 3 : 5,
              child: EcommereItems(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 7 : 10,
              child: ECommerceItemDescription(),
            ),
            Expanded(
              flex: _size.width > 1240 ? 2 : 4,
              child: EcommerceDrawer(),
            )
          ],
        ),
      ),
    );
  }
}

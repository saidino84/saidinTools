import 'package:flutter_svg/svg.dart';
import 'package:saidino_admin/app/ui/dashboard/dashbord_screen.dart';
import 'package:saidino_admin/app/ui/drawer/app_drawer.dart';
import 'package:saidino_admin/app/ui/responsive.dart';
import 'package:saidino_admin/shared.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      drawer: Responsivo.isMobile(context) ? AppDrawer() : null,
      // appBar: Responsivo.isMobile(context) ? AppBar() : null,
      //   title: Text('HOme'),
      // ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //SO VOU PRECISAR DESTE SIDEBAR EM TELAS AMPLAS
            if (Responsivo.isDesktop(context))
              Expanded(
                  //default flex=1
                  //and it takes 1/6 part of the screen
                  child: AppDrawer()),
            Expanded(
              flex: 5,
              //and it takes 5/6 part of the screen
              child: DashbordScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

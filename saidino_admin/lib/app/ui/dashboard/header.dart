import 'package:saidino_admin/app/ui/responsive.dart';
import 'package:saidino_admin/shared.dart';

import 'componets/profile_card.dart';
import 'componets/search_field.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsivo.isDesktop(context))
          IconButton(
            onPressed: context.read<MenuController>().controlMenu,
            icon: Icon(
              Icons.menu_open,
            ),
          ),
        if (!Responsivo.isMobile(context))
          Padding(
            padding: const EdgeInsets.only(left: defaultPadding),
            child: Text('Dashbord'),
          ),
        if (!Responsivo.isMobile(context))
          Spacer(
            flex: Responsivo.isDesktop(context) ? 2 : 1,
          ),
        Expanded(
          child: SearchField(),
        ),
        ProfileCard()
      ],
    );
  }
}

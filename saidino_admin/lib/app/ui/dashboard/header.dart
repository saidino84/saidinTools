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
        Padding(
          padding: const EdgeInsets.only(left: defaultPadding),
          child: Text('Dashbord'),
        ),
        Spacer(
          flex: 2,
        ),
        Expanded(
          child: SearchField(),
        ),
        ProfileCard()
      ],
    );
  }
}

import 'package:saidino_admin/app/ui/responsive.dart';
import 'package:saidino_admin/shared.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("${MediaQuery.of(context).size.width} SIZE WIDTH");
    Size _size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.white10,
          )),
      child: _size.width < 600
          ? GestureDetector(
              child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/saidino_profile.png')),
            )
          : Row(
              children: [
                CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/saidino_profile.png')),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding / 2),
                  child: Text('Saidino Developer'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.keyboard_arrow_down),
                ),
              ],
            ),
    );
  }
}

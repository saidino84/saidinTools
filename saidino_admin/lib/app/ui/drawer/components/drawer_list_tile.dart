import 'package:saidino_admin/shared.dart';

class DrawerListTile extends StatelessWidget {
  final String svg_uri;
  final String title;
  final VoidCallback onPress;
  const DrawerListTile(
      {Key? key,
      required this.onPress,
      required this.svg_uri,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svg_uri,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}

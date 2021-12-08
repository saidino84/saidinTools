import 'package:saidino_admin/shared.dart';

class Responsivo extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsivo(
      {Key? key,
      required this.mobile,
      required this.tablet,
      required this.desktop})
      : super(key: key);

  static int mobileLimite = 850;
  // static int mobileLimite = 850;
  static int desktopLimit = 1100;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <
      mobileLimite; //se width for menor que 850 na verdade 'e largura de um telefone

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < desktopLimit &&
      MediaQuery.of(context).size.width >=
          mobileLimite; //so se alargura da tela for maior ou igual a 850(tela de telefone) e menor a tela de desktop (1100)
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktopLimit;
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    if (_size.width >= mobileLimite) {
      return tablet;
    } else if (_size.width >= mobileLimite) {
      return tablet;
    } else {
      return mobile;
    }
  }
}

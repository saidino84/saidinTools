import 'package:google_fonts/google_fonts.dart';
import 'package:saidino_admin/app/controllers/menu_controller.dart';
import 'package:saidino_admin/app/ui/main_screen.dart';
import 'package:saidino_admin/shared.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SAIDINO RESPOSIVE DESIGN PLAINING',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
            builder: (context, child) => MainScreen(),
            // child: MainScreen(),
          )
        ],
      ),
    );
  }
}

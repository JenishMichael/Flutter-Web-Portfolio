import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/desktop_screen.dart';
import 'package:flutter_portfolio/screens/mobile_screen.dart';
import 'package:flutter_portfolio/screens/tablet_screen.dart';

import 'package:flutter_portfolio/widgets/drawer_app_bar.dart';
import 'package:flutter_portfolio/widgets/responsive_builder.dart';

final GlobalKey homeKey = GlobalKey();
final GlobalKey aboutMeKey = GlobalKey();
final GlobalKey skillskey = GlobalKey();
final GlobalKey contactKey = GlobalKey();

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Drawer(
        backgroundColor: const Color(0xFFFFC18A),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,

                Color.fromARGB(255, 244, 219, 181),
                // Color.fromARGB(255, 117, 178, 219)
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: const DrawerAppBar(),
        ),
      ),
      body: ResponsiveBuilder(
        mobile: MobileScreen(scaffoldKey: scaffoldKey),
        tablet: TabletScreen(scaffoldKey: scaffoldKey),
        desktop: DesktopScreen(scaffoldKey: scaffoldKey),
      ),
    );
  }
}

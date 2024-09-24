import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/drawer_list.dart';
import 'package:flutter_portfolio/screens/home/home.dart';

class DrawerAppBar extends StatelessWidget {
  const DrawerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 5),
          child: Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.close,
                  ))),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: drawerText.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(drawerIcon[index]),
                  title: Text(drawerText[index]),
                  onTap: () {
                    switch (index) {
                      case 0:
                        Scrollable.ensureVisible(homeKey.currentContext!,
                            duration: Duration(seconds: 1),
                            curve: Curves.easeInOut);
                        Navigator.of(context).pop();

                        break;
                      case 1:
                        Scrollable.ensureVisible(
                          aboutMeKey.currentContext!,
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInOut,
                        );
                        Navigator.of(context).pop();
                        break;
                      case 2:
                        Scrollable.ensureVisible(
                          skillskey.currentContext!,
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInOut,
                        );
                        Navigator.of(context).pop();
                        break;
                      case 3:
                        Navigator.of(context).pop();
                        break;
                      case 4:
                        Scrollable.ensureVisible(
                          contactKey.currentContext!,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeInOut,
                        );
                        Navigator.of(context).pop();
                        break;
                      default:
                    }
                  },
                );
              }),
        ),
      ],
    );
  }
}

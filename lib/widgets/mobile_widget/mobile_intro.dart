import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/custom_color.dart';
import 'package:flutter_portfolio/constants/padding_left_right.dart';
import 'package:flutter_portfolio/screens/home/home.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroMessage extends StatelessWidget {
  const IntroMessage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidthMob = MediaQuery.of(context).size.width;
    double paddingValue = PaddingLeftRight.getPaddingleftRight(screenWidthMob);
    return Column(
      children: [
        Container(
          key: homeKey,
          width: double.infinity,
          padding: EdgeInsets.only(
              left: paddingValue, right: paddingValue, top: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              const Text(
                "Hy! I Am\nJenish Michael Dev",
                style: TextStyle(
                    color: CustomColor.titleDarkblue,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 3),
                child: Text(
                  "I’m a software developer with expertise in Java and Flutter.",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 100),
                child: ElevatedButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      contactKey.currentContext!,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: const Text(
                    "Contact Me",
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Color.fromARGB(255, 226, 189, 133),
                // Color.fromARGB(255, 117, 178, 219)
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          padding: EdgeInsets.only(right: paddingValue - 6.2),
          child: Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () async {
                    const url = 'https://github.com/JenishMichael';
                    Uri uri = Uri.parse(url);
                    if (await canLaunchUrl(uri)) {
                      print("can launch ");
                      await launchUrl(uri);
                      print(" launched");
                    } else {
                      print('Could not launch $url');
                    }
                  },
                  icon: const Image(
                    image: AssetImage(
                      "assets/image/GitHub.png",
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    Uri uri = Uri.parse(
                        "https://www.linkedin.com/in/jenish-michael-117a03279/");
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    }
                  },
                  icon: const Image(
                    image: AssetImage(
                      "assets/image/LinkedIn.png",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/custom_color.dart';
import 'package:flutter_portfolio/constants/padding_left_right.dart';
import 'package:flutter_portfolio/screens/home/home.dart';
import 'package:url_launcher/url_launcher.dart';

class TabletHome extends StatelessWidget {
  const TabletHome({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidthMob = MediaQuery.of(context).size.width;
    double paddingValue = PaddingLeftRight.getPaddingleftRight(screenWidthMob);

    double widthOfIntro = screenWidthMob > 840 ? 370 : 330;
    double fontSizeOfTitle = screenWidthMob > 840 ? 32 : 30;
    double fontSizeOfSubTitle = screenWidthMob > 840 ? 13 : 12;
    double widthOfImage = screenWidthMob > 910 ? 400 : 340;
    return Column(
      key: homeKey,
      children: [
        Container(
          padding:
              EdgeInsets.only(left: paddingValue, right: paddingValue - 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 100),
                width: widthOfIntro,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hy! I Am\nJenish Michael Dev",
                      style: TextStyle(
                          color: CustomColor.AppBarBtnLight,
                          fontSize: fontSizeOfTitle,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text(
                        "I’m a software developer with expertise in Java and Flutter.",
                        style: TextStyle(
                          fontSize: fontSizeOfSubTitle,
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
              if (screenWidthMob > 800)
                Image(
                  width: widthOfImage,
                  height: 380,
                  image: const AssetImage(
                    "assets/image/intro_image.png",
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
          padding: EdgeInsets.only(top: 5, right: paddingValue - 6.2),
          child: Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 20),
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

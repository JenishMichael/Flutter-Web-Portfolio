import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/contact_list.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactContainerBuilder extends StatefulWidget {
  final int initial;
  final int length;
  const ContactContainerBuilder(
      {super.key, required this.initial, required this.length});

  @override
  State<ContactContainerBuilder> createState() =>
      _ContactContainerBuilderState();
}

class _ContactContainerBuilderState extends State<ContactContainerBuilder> {
  @override
  Widget build(BuildContext context) {
    double width = (widget.initial == 0) ? 200 : 150;

    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        for (int i = widget.initial; i < widget.length; i++)
          MouseRegion(
            cursor: SystemMouseCursors.click,
            opaque: true,
            child: GestureDetector(
              onTap: () {
                switch (i) {
                  case 0:
                    String emailId = "jenishmichael21@gmail.com";
                    print("Inside case 0");
                    Uri emailUri = Uri(
                      scheme: "mailto",
                      path: emailId,
                    );
                    Future<void> emailLaunch() async {
                      print("Inside Method");
                      if (await canLaunchUrl(emailUri)) {
                        print("Inside If Method");
                        await launchUrl(
                          emailUri,
                        );
                        print("After Launch If");
                      } else {}
                    }
                    emailLaunch();
                    break;

                  case 1:
                    String phoneNo = "9137722823";
                    String url = "https://wa.me/$phoneNo";
                    Uri uri = Uri.parse(url);
                    Future<void> whatsAppLaunch() async {
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri);
                      } else {}
                    }
                    whatsAppLaunch();
                    break;

                  case 2:
                    String phoneNo = "+919137722823";
                    final Uri uriDial = Uri(scheme: "tel", path: phoneNo);
                    Future<void> dialerLaunch() async {
                      if (await canLaunchUrl(uriDial)) {
                        await launchUrl(uriDial);
                      } else {}
                    }
                    dialerLaunch();
                }
              },
              child: Container(
                height: 100,
                width: width,
                margin: const EdgeInsets.all(0),
                // if(contactText == )
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(
                        "assets/image/${contactImg[i]}",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SelectableText(
                      contactText[i],
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}

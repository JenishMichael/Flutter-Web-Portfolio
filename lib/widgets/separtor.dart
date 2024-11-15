import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/custom_color.dart';

class Separator extends StatelessWidget {
  final Color gradient1;
  final Color gradient2;
  final String separatorName;
  final double separatorNameSize;

  const Separator({
    super.key,
    required this.separatorName,
    required this.gradient1,
    required this.gradient2,
    this.separatorNameSize = 25,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [gradient1, gradient2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                color: CustomColor.AppBarBtnLight,
                fontFamily: "NewTegomin",
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: separatorName,
                ),
                if (separatorName == "About" || separatorName == "Contact")
                  TextSpan(
                    text: " Me",
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: "NewTegomin",
                      fontSize: separatorNameSize,
                      //Default 25
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [gradient2, gradient1],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
          ),
        ),
      ],
    );
  }
}

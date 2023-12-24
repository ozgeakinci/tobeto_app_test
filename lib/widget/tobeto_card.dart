import 'package:flutter/material.dart';
import 'package:tobeto_app_1/theme/tobeto_theme_color.dart';

class TobetoCard extends StatelessWidget {
  TobetoCard({
    Key? key,
    required this.title,
    required this.color,
    Color? textColor,
  })  : textColor = textColor ?? TobetoAppColor.textColorBlack,
        super(key: key);

  final String title;

  final Color color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        child: Stack(
          children: [
            Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(20))),
            Padding(
              padding: const EdgeInsets.only(
                top: 35,
              ),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(color: textColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

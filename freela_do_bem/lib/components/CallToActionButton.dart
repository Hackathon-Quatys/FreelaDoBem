import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CallToActionButton extends StatelessWidget {
  final String title;
  final Color color;

  const CallToActionButton({Key? key, required this.title, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        double _fontSize = sizingInformation.deviceScreenType == DeviceScreenType.desktop ? 18 : 12;
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
          child: Text(
            title,
            style: TextStyle(
                fontSize: _fontSize,
                fontWeight: FontWeight.w800,
                color: Colors.white
            ),
          ),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
        );
      },
    );
  }
}
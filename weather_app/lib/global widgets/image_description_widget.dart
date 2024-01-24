import 'package:flutter/material.dart';
import 'package:weather_app/global%20widgets/text_widget.dart';

class ImageDescriptionWidget extends StatelessWidget {
  ImageDescriptionWidget({
    super.key,
    required this.assetImagePath,
    required this.description,
    required this.value,
  });

  String assetImagePath;
  String description;
  var value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          assetImagePath,
          scale: 8,
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: description,
            ),
            TextWidget(
              text: value,
              fontWeight: FontWeight.bold,
            ),
          ],
        )
      ],
    );
  }
}

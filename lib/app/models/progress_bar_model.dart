import 'package:flutter/painting.dart';

class ProgressBarModel {
  double width;
  double lineHeight;
  double percent;
  Color progressColor;
  Radius barRadius;

  ProgressBarModel(this.width, this.lineHeight, this.percent,
      this.progressColor, this.barRadius);
}

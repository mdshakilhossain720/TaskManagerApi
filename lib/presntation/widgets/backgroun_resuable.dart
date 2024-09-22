import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utilits/assets_path.dart';

class BackgrounResuable extends StatelessWidget {
  const BackgrounResuable({
    super.key, required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
         ImagePath.backgroundSvg,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),

       child

      ],
    );

  }
}
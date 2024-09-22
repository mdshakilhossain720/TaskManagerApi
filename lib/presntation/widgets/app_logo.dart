import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utilits/assets_path.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        ImagePath.backgroundSvg,
        width:120,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
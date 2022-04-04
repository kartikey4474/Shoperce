import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:catalogapp/size_config.dart';

class Sun extends StatelessWidget {
  const Sun({
    Key key,
    Duration duration,
    this.isFullSun,
  })  : _duration = duration,
        super(key: key);

  final Duration _duration;
  final bool isFullSun;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: _duration,
      curve: Curves.easeInOut,
      left: getProportionateScreenWidth(40),
      bottom: getProportionateScreenWidth(isFullSun ? -25 : -140),
      child: SvgPicture.asset("assets/icons/Sun.svg"),
    );
  }
}

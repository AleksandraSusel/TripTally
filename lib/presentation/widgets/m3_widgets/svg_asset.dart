import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgAsset extends StatelessWidget {
  const SvgAsset(
    this.asset, {
    this.color,
    this.height,
    this.width,
    super.key,
  });

  final String asset;
  final Color? color;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) => SvgPicture.asset(
        asset,
        height: height,
        width: width,
        colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      );
}

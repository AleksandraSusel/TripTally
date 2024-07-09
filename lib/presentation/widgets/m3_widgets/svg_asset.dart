import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgAsset extends StatelessWidget {
  const SvgAsset(
    this.asset, {
    required this.color,
    super.key,
  });

  final String asset;
  final Color color;

  @override
  Widget build(BuildContext context) => SvgPicture.asset(
        asset,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      );
}

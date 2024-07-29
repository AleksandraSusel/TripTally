import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    required this.asset,
    this.fit = BoxFit.fill,
    this.child,
    super.key,
  });

  final String asset;
  final BoxFit fit;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: fit,
          image: AssetImage(asset),
        ),
      ),
      child: child,
    );
  }
}

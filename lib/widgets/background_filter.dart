import 'package:flutter/material.dart';
import 'package:music_app/utils/config.dart';

class BackgroundFilter extends StatelessWidget {
  const BackgroundFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Config.secondaryColor,
              Config.secondaryColor.withOpacity(.5),
              Config.secondaryColor.withOpacity(0),
            ],
            stops: const [
              0,
              .4,
              .6
            ]).createShader(rect);
      },
      blendMode: BlendMode.dstOut,
      child: Container(
        decoration: Config.gradientBG(),
      ),
    );
  }
}

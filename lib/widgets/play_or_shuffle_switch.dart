import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:music_app/utils/config.dart';

class PlayOrShuffleSwitch extends StatefulWidget {
  const PlayOrShuffleSwitch({
    super.key,
  });

  @override
  State<PlayOrShuffleSwitch> createState() => _PlayOrShuffleSwitchState();
}

class _PlayOrShuffleSwitchState extends State<PlayOrShuffleSwitch> {
  bool isPlay = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        setState(() {
          isPlay = !isPlay;
        });
      },
      child: Container(
        height: 50,
        width: width,
        decoration: Config.switchDec(),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              left: isPlay ? 0 : width * .45,
              child: Container(
                height: 50,
                width: width * .45,
                decoration: Config.animatedButton(),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Başlat",
                          style: Config.playSwitch(isPlay),
                        ),
                      ),
                      Config.widthSmall,
                      Icon(
                        FluentIcons.play_circle_20_filled,
                        color: isPlay
                            ? Config.primaryColor
                            : Config.secondaryColor,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Karıştır",
                          style: Config.shuffleSwitch(isPlay),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        FluentIcons.arrow_shuffle_20_filled,
                        color: isPlay
                            ? Config.secondaryColor
                            : Config.primaryColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

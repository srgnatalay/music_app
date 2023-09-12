import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

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
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade600,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              left: isPlay ? 0 : width * .45,
              child: Container(
                height: 50,
                width: width * .45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
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
                          style: TextStyle(
                            color: isPlay ? Colors.deepPurple : Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        FluentIcons.play_circle_20_filled,
                        color: isPlay ? Colors.deepPurple : Colors.white,
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
                          style: TextStyle(
                            color: isPlay ? Colors.white : Colors.deepPurple,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        FluentIcons.arrow_shuffle_20_filled,
                        color: isPlay ? Colors.white : Colors.deepPurple,
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

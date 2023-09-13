import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app/models/song_model.dart';
import 'package:music_app/utils/config.dart';
import 'package:music_app/widgets/player_butons.dart';
import 'package:music_app/widgets/seekbar.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({
    super.key,
    required Stream<SeekBarData> seekBarDataStream,
    required this.audioPlayer,
    required this.song,
  }) : _seekBarDataStream = seekBarDataStream;

  final Stream<SeekBarData> _seekBarDataStream;
  final AudioPlayer audioPlayer;
  final Song song;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Config.paddingSymmetric,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            song.title,
            style: Config.songTitle(context),
          ),
          Config.heightMedium10,
          Text(
            song.description,
            maxLines: 2,
            style: Config.songDescription(context),
          ),
          Config.heightLarge,
          StreamBuilder<SeekBarData>(
            stream: _seekBarDataStream,
            builder: (context, snapshot) {
              final positionData = snapshot.data;
              return SeekBar(
                position: positionData?.position ?? Duration.zero,
                duration: positionData?.duration ?? Duration.zero,
                onChangeEnd: audioPlayer.seek,
              );
            },
          ),
          PlayerButtons(audioPlayer: audioPlayer),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                iconSize: 35,
                icon: const Icon(
                  FluentIcons.settings_20_filled,
                  color: Config.secondaryColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                iconSize: 35,
                icon: const Icon(
                  FluentIcons.cloud_arrow_down_20_filled,
                  color: Config.secondaryColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}




import 'package:music_app/src/constants/enums.dart';
import 'package:music_app/src/features/music/domain/entities/music.dart';

class SoundTrack implements Music {
  const SoundTrack(this.name, this.duration, this.genre);

  final String name;
  final double duration;
  final Genres genre;

  void pause() {

  }

  void play() {
  }


  void stop() {
  }
}

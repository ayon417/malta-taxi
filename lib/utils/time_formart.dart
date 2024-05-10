String formatTime(int? secs) {
  final Duration duration = Duration(seconds: secs!);
  final String minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
  final String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
  return '$minutes:$seconds';
}
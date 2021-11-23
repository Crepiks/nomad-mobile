import 'package:shared_preferences/shared_preferences.dart';

const scoreKey = "score";

Future<int> getScore() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  const defaultScore = 0;

  return prefs.getInt(scoreKey) ?? defaultScore;
}

Future<void> setScore(int score) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt(scoreKey, score);
}

import 'package:shared_preferences/shared_preferences.dart';

class SharedInstance {
  static SharedInstance? _instance;
  static SharedPreferences? _prefs;

  SharedInstance._();

  static Future<SharedInstance> getInstance() async {
    if (_instance == null) {
      _instance = SharedInstance._();
      await _instance!._init();
    }
    return _instance!;
  }

  Future<void> _init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences get preferences {
    if (_prefs == null) {
      throw Exception(
          "SharedPreferences not initialized. Call getInstance() first.");
    }
    return _prefs!;
  }
}

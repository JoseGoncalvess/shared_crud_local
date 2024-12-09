import 'package:shared_preferences/shared_preferences.dart';

class SharedInstance {
  static SharedInstance? _instance;
  late SharedPreferences _prefs;

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

  SharedPreferences get preferences => _prefs;
}

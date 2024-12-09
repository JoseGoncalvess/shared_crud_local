import 'package:shared_crud_local/shared/shared_instance.dart';

class LocalService {
  late final Future<SharedInstance> _instance;
  LocalService() {
    _instance = SharedInstance.getInstance();
  }

  Future<void> saveObject(String object, String key) async {
    final sharedPrefs = await _instance;
    await sharedPrefs.preferences.setString(key, object);
  }


  Future<String> loadObject(String key) async {
    final sharedPrefs = await _instance;
    return sharedPrefs.preferences.getString(key)!;
  }

  Future<bool> deleteObject(String key) async {
    final sharedPrefs = await _instance;
    return sharedPrefs.preferences.remove(key);
  }

  Future<bool> putObject(String newObject, String key) async {
    final sharedPrefs = await _instance;
    if (sharedPrefs.preferences.containsKey(key)) {
      sharedPrefs.preferences.setString(key, newObject);
      return true;
    }
    return false;
  }

  Future<void> saveListObject(List<String> object, String key) async {
    final sharedPrefs = await _instance;
    await sharedPrefs.preferences.setStringList(key, object);
  }

  Future<List<String>> loadListObject(String key) async {
    final sharedPrefs = await _instance;
    return sharedPrefs.preferences.getStringList(key) ?? [];
  }

  Future<bool> deleteListObject(String key) async {
    final sharedPrefs = await _instance;
    return sharedPrefs.preferences.remove(key);
  }

  Future<bool> putListObject(String newListObject, String key) async {
    final sharedPrefs = await _instance;
    if (sharedPrefs.preferences.containsKey(key)) {
      sharedPrefs.preferences.setString(key, newListObject);
      return true;
    }
    return false;
  }

  Future<bool> deletestObjectfForList(
      String newObject, String keyList, int indexObjetc) async {
    final sharedPrefs = await _instance;
    if (sharedPrefs.preferences.containsKey(keyList)) {
      List<String> oldList = await loadListObject(keyList);
      oldList.removeAt(indexObjetc);
      sharedPrefs.preferences.setStringList(keyList, oldList);
      return true;
    }
    return false;
  }
}

import 'package:shared_crud_local/service/local_service.dart';
import 'package:shared_crud_local/shared/const.dart';
import 'package:shared_crud_local/shared/result.dart';

class LocalRepository {
  late final LocalService _instance;
  LocalRepository() {
    _instance = LocalService();
  }

  Future<Result?> save(String object) async {
    await _instance.saveObject(object, KEY_OBJECT);

    return Result(sucess: "Entinty Savo com Sucesso", failure: null);
  }

  Future<Result> load() async {
    String response = await _instance.loadObject(KEY_OBJECT);
    return Result(sucess: response, failure: null);
  }

  Future<bool> delete() async {
    return _instance.deleteObject(KEY_OBJECT);
  }

  Future<Result> put(
    String newObject,
  ) async {
    await _instance.putObject(newObject, KEY_OBJECT);
    return Result(sucess: "Entity Atualizado com sucesso", failure: null);
  }

  Future<Result> saveListObject(List<String> listObject) async {
    await _instance.saveListObject(listObject, KEY_LIST_OBJECT);
    return Result(sucess: "Lista Salva com sucesso", failure: null);
  }

  Future<List<String>> loadListObject(String key) async {
    return await _instance.loadListObject(key);
  }

  Future<Result> deleteListObject() async {
    bool response = await _instance.deleteListObject(KEY_LIST_OBJECT);
    return Result(sucess: response.toString(), failure: null);
  }

  Future<Result> putListObject(String newListObject) async {
    bool response =
        await _instance.putListObject(newListObject, KEY_LIST_OBJECT);
    return Result(sucess: response.toString(), failure: null);
  }

  Future<Result> deletestObjectfForList(
      String newObject, String keyList, int indexObjetc) async {
    bool response = await _instance.deletestObjectfForList(
        newObject, KEY_LIST_OBJECT, indexObjetc);
    return Result(sucess: response.toString(), failure: null);
  }
}

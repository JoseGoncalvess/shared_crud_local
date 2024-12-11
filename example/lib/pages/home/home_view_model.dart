import 'package:flutter/material.dart';
import 'package:shared_crud_local/shared_crud_local.dart';
import 'home_page.dart';

abstract class HomeViewModel extends State<HomePage> {
  LocalRepository repository = LocalRepository();
  TextEditingController nomeController = TextEditingController();

  String _result = "";
  String get result => _result;

  void saveinfo() async {
    await repository.save('"nome":"${nomeController.text}", "idade":"34"');
  }

  void loadinfo() async {
    Result response = await repository.load();
    setState(() {
      _result = response.sucess ?? "OPS ERRO";
    });
  }

  void updatetext() {
    setState(() {
      nomeController;
    });
  }
}

import 'package:flutter/material.dart';

import 'home_page.dart';

abstract class HomeViewModel extends State<HomePage> {
  // LocalRepository repository = LocalRepository();
  TextEditingController nomeController = TextEditingController();
  int _counter = 0;
  int get couter => _counter;

  String _result = "";
  String get result => _result;

  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void saveinfo() async {
    // await repository
    //     .save('"nome":"${nomeController.text ?? "Maurilho"}", "idade":"34"');
  }

  void loadinfo() async {
    // Result response = await repository.load();
    // setState(() {
    //   _result = response.sucess ?? "OPS ERRO";
    // });
  }
}
